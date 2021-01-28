///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RunFunctionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RunFunctionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'luatest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcName', protoName: 'funcName')
    ..hasRequiredFields = false
  ;

  RunFunctionRequest._() : super();
  factory RunFunctionRequest({
    $core.String funcName,
  }) {
    final _result = create();
    if (funcName != null) {
      _result.funcName = funcName;
    }
    return _result;
  }
  factory RunFunctionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RunFunctionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RunFunctionRequest clone() => RunFunctionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RunFunctionRequest copyWith(void Function(RunFunctionRequest) updates) => super.copyWith((message) => updates(message as RunFunctionRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RunFunctionRequest create() => RunFunctionRequest._();
  RunFunctionRequest createEmptyInstance() => create();
  static $pb.PbList<RunFunctionRequest> createRepeated() => $pb.PbList<RunFunctionRequest>();
  @$core.pragma('dart2js:noInline')
  static RunFunctionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RunFunctionRequest>(create);
  static RunFunctionRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get funcName => $_getSZ(0);
  @$pb.TagNumber(1)
  set funcName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncName() => clearField(1);
}

class RunFunctionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RunFunctionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'luatest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcResponse', protoName: 'funcResponse')
    ..hasRequiredFields = false
  ;

  RunFunctionResponse._() : super();
  factory RunFunctionResponse({
    $core.String funcResponse,
  }) {
    final _result = create();
    if (funcResponse != null) {
      _result.funcResponse = funcResponse;
    }
    return _result;
  }
  factory RunFunctionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RunFunctionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RunFunctionResponse clone() => RunFunctionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RunFunctionResponse copyWith(void Function(RunFunctionResponse) updates) => super.copyWith((message) => updates(message as RunFunctionResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RunFunctionResponse create() => RunFunctionResponse._();
  RunFunctionResponse createEmptyInstance() => create();
  static $pb.PbList<RunFunctionResponse> createRepeated() => $pb.PbList<RunFunctionResponse>();
  @$core.pragma('dart2js:noInline')
  static RunFunctionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RunFunctionResponse>(create);
  static RunFunctionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get funcResponse => $_getSZ(0);
  @$pb.TagNumber(1)
  set funcResponse($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncResponse() => clearField(1);
}

class GetNamesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNamesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'luatest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNamesRequest._() : super();
  factory GetNamesRequest() => create();
  factory GetNamesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNamesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNamesRequest clone() => GetNamesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNamesRequest copyWith(void Function(GetNamesRequest) updates) => super.copyWith((message) => updates(message as GetNamesRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNamesRequest create() => GetNamesRequest._();
  GetNamesRequest createEmptyInstance() => create();
  static $pb.PbList<GetNamesRequest> createRepeated() => $pb.PbList<GetNamesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNamesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNamesRequest>(create);
  static GetNamesRequest _defaultInstance;
}

class GetNamesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNamesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'luatest'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcNames', protoName: 'funcNames')
    ..hasRequiredFields = false
  ;

  GetNamesResponse._() : super();
  factory GetNamesResponse({
    $core.Iterable<$core.String> funcNames,
  }) {
    final _result = create();
    if (funcNames != null) {
      _result.funcNames.addAll(funcNames);
    }
    return _result;
  }
  factory GetNamesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNamesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNamesResponse clone() => GetNamesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNamesResponse copyWith(void Function(GetNamesResponse) updates) => super.copyWith((message) => updates(message as GetNamesResponse)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNamesResponse create() => GetNamesResponse._();
  GetNamesResponse createEmptyInstance() => create();
  static $pb.PbList<GetNamesResponse> createRepeated() => $pb.PbList<GetNamesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNamesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNamesResponse>(create);
  static GetNamesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get funcNames => $_getList(0);
}

