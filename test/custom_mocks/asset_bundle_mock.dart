import 'dart:async';
import 'dart:ui';

import 'package:flutter/services.dart';

class MockAssetBundle implements AssetBundle {
  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  void evict(String key) {
    // TODO: implement evict
  }

  @override
  Future<ByteData> load(String key) {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<ImmutableBuffer> loadBuffer(String key) {
    // TODO: implement loadBuffer
    throw UnimplementedError();
  }

  @override
  Future<String> loadString(String key, {bool cache = true}) {
    // TODO: implement loadString
    return Future.value("""
name: decibel_sdk
description: MedalliaDxa SDK flutter binding
version: 1.1.0
homepage: 'https://decibel-documentation.gitbook.io/decibelsdk/flutter/getstarted'

""");
  }

  @override
  Future<T> loadStructuredData<T>(
      String key, Future<T> Function(String value) parser) {
    // TODO: implement loadStructuredData
    throw UnimplementedError();
  }

  @override
  Future<T> loadStructuredBinaryData<T>(
      String key, FutureOr<T> Function(ByteData data) parser) {
    // TODO: implement loadStructuredBinaryData
    throw UnimplementedError();
  }
}
