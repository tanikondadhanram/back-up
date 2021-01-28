///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class LuaServiceClient extends $grpc.Client {
  static final _$runFunction =
      $grpc.ClientMethod<$0.RunFunctionRequest, $0.RunFunctionResponse>(
          '/luatest.LuaService/RunFunction',
          ($0.RunFunctionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RunFunctionResponse.fromBuffer(value));
  static final _$getNames =
      $grpc.ClientMethod<$0.GetNamesRequest, $0.GetNamesResponse>(
          '/luatest.LuaService/GetNames',
          ($0.GetNamesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetNamesResponse.fromBuffer(value));

  LuaServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RunFunctionResponse> runFunction(
      $0.RunFunctionRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$runFunction, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetNamesResponse> getNames($0.GetNamesRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getNames, request, options: options);
  }
}

abstract class LuaServiceBase extends $grpc.Service {
  $core.String get $name => 'luatest.LuaService';

  LuaServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.RunFunctionRequest, $0.RunFunctionResponse>(
            'RunFunction',
            runFunction_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RunFunctionRequest.fromBuffer(value),
            ($0.RunFunctionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetNamesRequest, $0.GetNamesResponse>(
        'GetNames',
        getNames_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNamesRequest.fromBuffer(value),
        ($0.GetNamesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RunFunctionResponse> runFunction_Pre($grpc.ServiceCall call,
      $async.Future<$0.RunFunctionRequest> request) async {
    return runFunction(call, await request);
  }

  $async.Future<$0.GetNamesResponse> getNames_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetNamesRequest> request) async {
    return getNames(call, await request);
  }

  $async.Future<$0.RunFunctionResponse> runFunction(
      $grpc.ServiceCall call, $0.RunFunctionRequest request);
  $async.Future<$0.GetNamesResponse> getNames(
      $grpc.ServiceCall call, $0.GetNamesRequest request);
}
