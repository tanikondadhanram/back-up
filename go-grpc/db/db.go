package db

import (
	// "encoding/json"

	"encoding/json"
	"fmt"
	"log"

	sqlite "crawshaw.io/sqlite"
	lua "github.com/yuin/gopher-lua"
)

//CodeCo is ...
type CodeCol struct {
	Name string
	Code string
}

var conn *sqlite.Conn

// LoadDb is ..
func LoadDB() {
	var err error
	conn, err = sqlite.OpenConn("db/data.db", 0)
	if err != nil {
		log.Fatal(err)
	}
}

// GetFuncsNamesFromDB is ...
func GetFuncsNamesFromDB() []string {
	funcNames := []string{}
	stmt := conn.Prep("SELECT name FROM funcs")
	for {
		if hasRow, err := stmt.Step(); err != nil {
			panic(err)
		} else if !hasRow {
			break
		}
		for i := 0; i < stmt.ColumnCount(); i++ {
			colName := stmt.ColumnName(i)
			funcNames = append(funcNames, stmt.GetText(colName))
		}
	}
	return funcNames
}

// RunFuncFromDB is ...
func RunFuncFromDB(funcName string) string {
	L := lua.NewState()
	defer L.Close()
	var fun CodeCol
	stmt := conn.Prep("SELECT code FROM funcs")
	for {
		if hasRow, err := stmt.Step(); err != nil {
			panic(err)
		} else if !hasRow {
			break
		}
		for i := 0; i < stmt.ColumnCount(); i++ {
			colName := stmt.ColumnName(i)
			err := json.Unmarshal([]byte(stmt.GetText(colName)), &fun)
			if err != nil {
				fmt.Println(err)
			}
			if fun.Name == funcName {
				co, _ := L.NewThread()
				L.DoString(fun.Code)
				fn := L.GetGlobal(fun.Name).(*lua.LFunction)
				_, _, values := L.Resume(co, fn)
				return values[0].String()
			}
		}
	}
	return "no function found"
}
