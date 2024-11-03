// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.5.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<RsiLauncherAsarData> getRsiLauncherAsarData(
        {required String asarPath}) =>
    RustLib.instance.api
        .crateApiAsarApiGetRsiLauncherAsarData(asarPath: asarPath);

class RsiLauncherAsarData {
  final String asarPath;
  final String mainJsPath;
  final Uint8List mainJsContent;

  const RsiLauncherAsarData({
    required this.asarPath,
    required this.mainJsPath,
    required this.mainJsContent,
  });

  Future<void> writeMainJs({required List<int> content}) =>
      RustLib.instance.api.crateApiAsarApiRsiLauncherAsarDataWriteMainJs(
          that: this, content: content);

  @override
  int get hashCode =>
      asarPath.hashCode ^ mainJsPath.hashCode ^ mainJsContent.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RsiLauncherAsarData &&
          runtimeType == other.runtimeType &&
          asarPath == other.asarPath &&
          mainJsPath == other.mainJsPath &&
          mainJsContent == other.mainJsContent;
}
