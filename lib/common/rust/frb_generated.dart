// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.28.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/http_api.dart';
import 'api/process_api.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.io.dart' if (dart.library.html) 'frb_generated.web.dart';
import 'http_package.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {}

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.0.0-dev.28';

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'rust',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<List<String>> dnsLookupIps({required String host, dynamic hint});

  Future<List<String>> dnsLookupTxt({required String host, dynamic hint});

  Future<RustHttpResponse> fetch(
      {required MyMethod method,
      required String url,
      Map<String, String>? headers,
      Uint8List? inputData,
      String? withIpAddress,
      dynamic hint});

  Future<void> setDefaultHeader(
      {required Map<String, String> headers, dynamic hint});

  Stream<String> startProcess(
      {required String executable,
      required List<String> arguments,
      required String workingDirectory,
      dynamic hint});
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<List<String>> dnsLookupIps({required String host, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 = cst_encode_String(host);
        return wire.wire_dns_lookup_ips(port_, arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_list_String,
        decodeErrorData: dco_decode_AnyhowException,
      ),
      constMeta: kDnsLookupIpsConstMeta,
      argValues: [host],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kDnsLookupIpsConstMeta => const TaskConstMeta(
        debugName: "dns_lookup_ips",
        argNames: ["host"],
      );

  @override
  Future<List<String>> dnsLookupTxt({required String host, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 = cst_encode_String(host);
        return wire.wire_dns_lookup_txt(port_, arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_list_String,
        decodeErrorData: dco_decode_AnyhowException,
      ),
      constMeta: kDnsLookupTxtConstMeta,
      argValues: [host],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kDnsLookupTxtConstMeta => const TaskConstMeta(
        debugName: "dns_lookup_txt",
        argNames: ["host"],
      );

  @override
  Future<RustHttpResponse> fetch(
      {required MyMethod method,
      required String url,
      Map<String, String>? headers,
      Uint8List? inputData,
      String? withIpAddress,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 = cst_encode_my_method(method);
        var arg1 = cst_encode_String(url);
        var arg2 = cst_encode_opt_Map_String_String(headers);
        var arg3 = cst_encode_opt_list_prim_u_8_strict(inputData);
        var arg4 = cst_encode_opt_String(withIpAddress);
        return wire.wire_fetch(port_, arg0, arg1, arg2, arg3, arg4);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_rust_http_response,
        decodeErrorData: dco_decode_AnyhowException,
      ),
      constMeta: kFetchConstMeta,
      argValues: [method, url, headers, inputData, withIpAddress],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kFetchConstMeta => const TaskConstMeta(
        debugName: "fetch",
        argNames: ["method", "url", "headers", "inputData", "withIpAddress"],
      );

  @override
  Future<void> setDefaultHeader(
      {required Map<String, String> headers, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        var arg0 = cst_encode_Map_String_String(headers);
        return wire.wire_set_default_header(port_, arg0);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kSetDefaultHeaderConstMeta,
      argValues: [headers],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kSetDefaultHeaderConstMeta => const TaskConstMeta(
        debugName: "set_default_header",
        argNames: ["headers"],
      );

  @override
  Stream<String> startProcess(
      {required String executable,
      required List<String> arguments,
      required String workingDirectory,
      dynamic hint}) {
    return handler.executeStream(StreamTask(
      callFfi: (port_) {
        var arg0 = cst_encode_String(executable);
        var arg1 = cst_encode_list_String(arguments);
        var arg2 = cst_encode_String(workingDirectory);
        return wire.wire_start_process(port_, arg0, arg1, arg2);
      },
      codec: DcoCodec(
        decodeSuccessData: dco_decode_String,
        decodeErrorData: null,
      ),
      constMeta: kStartProcessConstMeta,
      argValues: [executable, arguments, workingDirectory],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kStartProcessConstMeta => const TaskConstMeta(
        debugName: "start_process",
        argNames: ["executable", "arguments", "workingDirectory"],
      );

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return AnyhowException(raw as String);
  }

  @protected
  Map<String, String> dco_decode_Map_String_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return Map.fromEntries(dco_decode_list_record_string_string(raw)
        .map((e) => MapEntry(e.$1, e.$2)));
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  int dco_decode_box_autoadd_u_64(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dco_decode_u_64(raw);
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  List<String> dco_decode_list_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_String).toList();
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  List<(String, String)> dco_decode_list_record_string_string(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_record_string_string).toList();
  }

  @protected
  MyHttpVersion dco_decode_my_http_version(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return MyHttpVersion.values[raw as int];
  }

  @protected
  MyMethod dco_decode_my_method(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return MyMethod.values[raw as int];
  }

  @protected
  Map<String, String>? dco_decode_opt_Map_String_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_Map_String_String(raw);
  }

  @protected
  String? dco_decode_opt_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_String(raw);
  }

  @protected
  int? dco_decode_opt_box_autoadd_u_64(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_box_autoadd_u_64(raw);
  }

  @protected
  Uint8List? dco_decode_opt_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_list_prim_u_8_strict(raw);
  }

  @protected
  (String, String) dco_decode_record_string_string(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 2) {
      throw Exception('Expected 2 elements, got ${arr.length}');
    }
    return (
      dco_decode_String(arr[0]),
      dco_decode_String(arr[1]),
    );
  }

  @protected
  RustHttpResponse dco_decode_rust_http_response(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 7)
      throw Exception('unexpected arr length: expect 7 but see ${arr.length}');
    return RustHttpResponse(
      statusCode: dco_decode_u_16(arr[0]),
      headers: dco_decode_Map_String_String(arr[1]),
      url: dco_decode_String(arr[2]),
      contentLength: dco_decode_opt_box_autoadd_u_64(arr[3]),
      version: dco_decode_my_http_version(arr[4]),
      remoteAddr: dco_decode_String(arr[5]),
      data: dco_decode_opt_list_prim_u_8_strict(arr[6]),
    );
  }

  @protected
  int dco_decode_u_16(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  int dco_decode_u_64(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeI64OrU64(raw);
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_String(deserializer);
    return AnyhowException(inner);
  }

  @protected
  Map<String, String> sse_decode_Map_String_String(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_record_string_string(deserializer);
    return Map.fromEntries(inner.map((e) => MapEntry(e.$1, e.$2)));
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  int sse_decode_box_autoadd_u_64(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_u_64(deserializer));
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <String>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_String(deserializer));
    }
    return ans_;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  List<(String, String)> sse_decode_list_record_string_string(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <(String, String)>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_record_string_string(deserializer));
    }
    return ans_;
  }

  @protected
  MyHttpVersion sse_decode_my_http_version(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return MyHttpVersion.values[inner];
  }

  @protected
  MyMethod sse_decode_my_method(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return MyMethod.values[inner];
  }

  @protected
  Map<String, String>? sse_decode_opt_Map_String_String(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_Map_String_String(deserializer));
    } else {
      return null;
    }
  }

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_String(deserializer));
    } else {
      return null;
    }
  }

  @protected
  int? sse_decode_opt_box_autoadd_u_64(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_u_64(deserializer));
    } else {
      return null;
    }
  }

  @protected
  Uint8List? sse_decode_opt_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_list_prim_u_8_strict(deserializer));
    } else {
      return null;
    }
  }

  @protected
  (String, String) sse_decode_record_string_string(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_field0 = sse_decode_String(deserializer);
    var var_field1 = sse_decode_String(deserializer);
    return (var_field0, var_field1);
  }

  @protected
  RustHttpResponse sse_decode_rust_http_response(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_statusCode = sse_decode_u_16(deserializer);
    var var_headers = sse_decode_Map_String_String(deserializer);
    var var_url = sse_decode_String(deserializer);
    var var_contentLength = sse_decode_opt_box_autoadd_u_64(deserializer);
    var var_version = sse_decode_my_http_version(deserializer);
    var var_remoteAddr = sse_decode_String(deserializer);
    var var_data = sse_decode_opt_list_prim_u_8_strict(deserializer);
    return RustHttpResponse(
        statusCode: var_statusCode,
        headers: var_headers,
        url: var_url,
        contentLength: var_contentLength,
        version: var_version,
        remoteAddr: var_remoteAddr,
        data: var_data);
  }

  @protected
  int sse_decode_u_16(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint16();
  }

  @protected
  int sse_decode_u_64(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint64();
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  int cst_encode_i_32(int raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  int cst_encode_my_http_version(MyHttpVersion raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_i_32(raw.index);
  }

  @protected
  int cst_encode_my_method(MyMethod raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_i_32(raw.index);
  }

  @protected
  int cst_encode_u_16(int raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  int cst_encode_u_8(int raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  void cst_encode_unit(void raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    throw UnimplementedError('Unreachable ((');
  }

  @protected
  void sse_encode_Map_String_String(
      Map<String, String> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_record_string_string(
        self.entries.map((e) => (e.key, e.value)).toList(), serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_box_autoadd_u_64(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_64(self, serializer);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_String(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_list_record_string_string(
      List<(String, String)> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_record_string_string(item, serializer);
    }
  }

  @protected
  void sse_encode_my_http_version(
      MyHttpVersion self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_my_method(MyMethod self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_opt_Map_String_String(
      Map<String, String>? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_Map_String_String(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_String(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_box_autoadd_u_64(int? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_u_64(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_list_prim_u_8_strict(
      Uint8List? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_list_prim_u_8_strict(self, serializer);
    }
  }

  @protected
  void sse_encode_record_string_string(
      (String, String) self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.$1, serializer);
    sse_encode_String(self.$2, serializer);
  }

  @protected
  void sse_encode_rust_http_response(
      RustHttpResponse self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_16(self.statusCode, serializer);
    sse_encode_Map_String_String(self.headers, serializer);
    sse_encode_String(self.url, serializer);
    sse_encode_opt_box_autoadd_u_64(self.contentLength, serializer);
    sse_encode_my_http_version(self.version, serializer);
    sse_encode_String(self.remoteAddr, serializer);
    sse_encode_opt_list_prim_u_8_strict(self.data, serializer);
  }

  @protected
  void sse_encode_u_16(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint16(self);
  }

  @protected
  void sse_encode_u_64(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint64(self);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }
}
