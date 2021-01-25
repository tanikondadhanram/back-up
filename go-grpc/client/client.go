package main

import (
	"log"

	luatest "dhanush.com/go-grpc-lua/luatest"
	"golang.org/x/net/context"
	"google.golang.org/grpc"
)

func main() {
	var conn *grpc.ClientConn

	conn, err := grpc.Dial(":9000", grpc.WithInsecure())

	if err != nil {
		log.Fatalf("could not connect: %s", err)
	}

	defer conn.Close()

	l := luatest.NewLuaServiceClient(conn)

	function := luatest.RunFunctionRequest{
		FuncName: "funcTwo",
	}

	res, err := l.RunFunction(context.Background(), &function)

	if _, err := l.RunFunction(context.Background(), &function); err != nil {
		log.Fatalf("Error when calling SayHello: %s", err)
	}

	log.Printf("Response from the server: %s", res.FuncResponse)

	req := luatest.GetNamesRequest{}

	re, _ := l.GetNames(context.Background(), &req)

	if _, err := l.GetNames(context.Background(), &req); err != nil {
		log.Fatalf("Error when calling SayHello: %s", err)
	}

	log.Printf("Response from the db: %s", re.FuncNames)
}
