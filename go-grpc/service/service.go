package service

import (
	"fmt"
	"log"
	"net"

	DB "dhanush.com/go-grpc-lua/db"
	luatest "dhanush.com/go-grpc-lua/luatest"

	"google.golang.org/grpc"
)

var grpcServer *grpc.Server

// StartServer is ...
func StartServer() {
	DB.LoadDB()
	lis, err := net.Listen("tcp", ":9000")
	if err != nil {
		log.Fatalf("Failed to listen on port 9000: %v", err)
	}

	s := luatest.Server{}
	grpcServer = grpc.NewServer()

	luatest.RegisterLuaServiceServer(grpcServer, &s)

	fmt.Println("Starting service on 0.0.0.0:9000")
	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("Failed to serve grpc server over port 9000: %v", err)
	}
}

// StopServer is ....
func StopServer() {
	grpcServer.Stop()
}
