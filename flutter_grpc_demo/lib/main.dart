import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_grpc_demo/proto/service.pbgrpc.dart';
import 'package:flutter_grpc_demo/proto/service.pb.dart';
import 'package:grpc/grpc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Grpc Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: GrpcDemo(),
      ),
    );
  }
}

class GrpcDemo extends StatefulWidget {
  GrpcDemo({Key key}) : super(key: key);

  @override
  _GrpcDemoState createState() => _GrpcDemoState();
}

class _GrpcDemoState extends State<GrpcDemo> {
  var funcRes = "no function called yet";
  var funcNames = [];
  static LuaServiceClient client;
  _GrpcDemoState() {
    print("called");
    client = LuaServiceClient(ClientChannel("127.0.0.1",
        port: 9000,
        options: ChannelOptions(credentials: ChannelCredentials.insecure())));
  }

  setNames(names) {
    setState(() {
      funcNames = names.funcNames;
    });
  }

  setFuncRes(res) {
    setState(() {
      funcRes = res.funcResponse;
    });
  }

  getFuncNames() {
    var req = GetNamesRequest();
    var res = client.getNames(req);
    var funcNames = res.then(setNames);
    return funcNames;
  }

  runFunction(funcName) {
    var req = RunFunctionRequest(funcName: funcName);
    var res = client.runFunction(req);
    res.then(setFuncRes);
  }

  onClickHandler(funcName) {
    setState(() {
      runFunction(funcName);
    });
  }

  Widget renderButtons(List<dynamic> strings) {
    return Wrap(
        direction: Axis.horizontal,
        children: strings
            .map((item) => Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    onClickHandler(item);
                  },
                  child: Text(item),
                )))
            .toList());
  }

  Widget renderTextArea() {
    return Center(
      child: Text(funcRes),
    );
  }

  @override
  Widget build(BuildContext context) {
    getFuncNames();
    return Container(
        child: Wrap(children: [renderButtons(funcNames), renderTextArea()]));
  }
}
