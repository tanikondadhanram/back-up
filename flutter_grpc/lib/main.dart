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

class Home {
  final StreamController<String> homeStream = StreamController<String>();
  static LuaServiceClient client;

  Home() {
    // client = LuaServiceClient(ClientChannel("127.0.0.1",
    //     port: 9000,
    //     options: ChannelOptions(credentials: ChannelCredentials.insecure())));
  }

  var funcResponse = "no function called yet";

  Stream<String> get stream => homeStream.stream;

  StreamSubscription<String> get subscription => stream.listen(
      (data) {
        print("Data: $data");
      },
      onError: (err) {
        print("Error: $err");
      },
      cancelOnError: false,
      onDone: () {
        print("Done");
      });

  getFuncNames() {
    var funcNames = [];
    var req = GetNamesRequest();
    var res = client.getNames(req);
    res.then((data) => funcNames = data.funcNames);
    return funcNames;
  }

  runFunction(funcName) {
    var req = RunFunctionRequest(funcName: funcName);
    var res = client.runFunction(req);
    res.then((data) => homeStream.sink.add(data.funcResponse));
  }

  void dispose() {
    subscription.cancel();
    homeStream.close();
  }
}

class _GrpcDemoState extends State<GrpcDemo> {
  final home = Home();
  final Stream<String> homeStream = Home().stream;

  onClickHandler(funcName) {
    setState(() {
      home.runFunction(funcName);
      home.funcResponse = "$funcName called success";
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
      child: Text(home.funcResponse),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Wrap(children: [
      renderButtons(["funcOne", "funcTwo"]),
      renderTextArea()
    ]));
  }
}
