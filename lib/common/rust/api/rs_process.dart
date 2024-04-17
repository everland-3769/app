// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.32.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `RS_PROCESS_MAP` is not used by any `pub` functions, thus it is ignored.
// The type `RsProcess` is not used by any `pub` functions, thus it is ignored.

Stream<RsProcessStreamData> start(
        {required String executable,
        required List<String> arguments,
        required String workingDirectory,
        dynamic hint}) =>
    RustLib.instance.api.start(
        executable: executable,
        arguments: arguments,
        workingDirectory: workingDirectory,
        hint: hint);

Future<void> write({required int rsPid, required String data, dynamic hint}) =>
    RustLib.instance.api.write(rsPid: rsPid, data: data, hint: hint);

class RsProcessStreamData {
  final RsProcessStreamDataType dataType;
  final String data;
  final int rsPid;

  const RsProcessStreamData({
    required this.dataType,
    required this.data,
    required this.rsPid,
  });

  @override
  int get hashCode => dataType.hashCode ^ data.hashCode ^ rsPid.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RsProcessStreamData &&
          runtimeType == other.runtimeType &&
          dataType == other.dataType &&
          data == other.data &&
          rsPid == other.rsPid;
}

enum RsProcessStreamDataType {
  output,
  error,
  exit,
  ;
}