package luatest

import (
	DB "dhanush.com/go-grpc-lua/db"
	"golang.org/x/net/context"
)

//Server Struct ...
type Server struct{}

//RunFunction is ...
func (s *Server) RunFunction(ctx context.Context, in *RunFunctionRequest) (*RunFunctionResponse, error) {

	result := DB.RunFuncFromDB(in.FuncName)

	return &RunFunctionResponse{FuncResponse: result}, nil
}

// GetNames is ...
func (s *Server) GetNames(ctx context.Context, request *GetNamesRequest) (*GetNamesResponse, error) {

	names := DB.GetFuncsNamesFromDB()

	return &GetNamesResponse{FuncNames: names}, nil
}
