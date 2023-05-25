// Autogenerated from Pigeon (v9.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

class StartScreenMessage {
  StartScreenMessage({
    required this.screenName,
    required this.screenId,
    required this.startTime,
    required this.isBackground,
  });

  String screenName;

  int screenId;

  int startTime;

  bool isBackground;

  Object encode() {
    return <Object?>[
      screenName,
      screenId,
      startTime,
      isBackground,
    ];
  }

  static StartScreenMessage decode(Object result) {
    result as List<Object?>;
    return StartScreenMessage(
      screenName: result[0]! as String,
      screenId: result[1]! as int,
      startTime: result[2]! as int,
      isBackground: result[3]! as bool,
    );
  }
}

class EndScreenMessage {
  EndScreenMessage({
    required this.screenName,
    required this.screenId,
    required this.endTime,
    required this.isBackground,
  });

  String screenName;

  int screenId;

  int endTime;

  bool isBackground;

  Object encode() {
    return <Object?>[
      screenName,
      screenId,
      endTime,
      isBackground,
    ];
  }

  static EndScreenMessage decode(Object result) {
    result as List<Object?>;
    return EndScreenMessage(
      screenName: result[0]! as String,
      screenId: result[1]! as int,
      endTime: result[2]! as int,
      isBackground: result[3]! as bool,
    );
  }
}

class SessionMessage {
  SessionMessage({
    required this.account,
    required this.property,
    required this.consents,
    required this.version,
  });

  int account;

  int property;

  int consents;

  String version;

  Object encode() {
    return <Object?>[
      account,
      property,
      consents,
      version,
    ];
  }

  static SessionMessage decode(Object result) {
    result as List<Object?>;
    return SessionMessage(
      account: result[0]! as int,
      property: result[1]! as int,
      consents: result[2]! as int,
      version: result[3]! as String,
    );
  }
}

class ScreenshotMessage {
  ScreenshotMessage({
    required this.screenshotData,
    required this.screenId,
    required this.screenName,
    required this.startFocusTime,
  });

  Uint8List screenshotData;

  int screenId;

  String screenName;

  int startFocusTime;

  Object encode() {
    return <Object?>[
      screenshotData,
      screenId,
      screenName,
      startFocusTime,
    ];
  }

  static ScreenshotMessage decode(Object result) {
    result as List<Object?>;
    return ScreenshotMessage(
      screenshotData: result[0]! as Uint8List,
      screenId: result[1]! as int,
      screenName: result[2]! as String,
      startFocusTime: result[3]! as int,
    );
  }
}

class DimensionStringMessage {
  DimensionStringMessage({
    required this.dimensionName,
    required this.value,
  });

  String dimensionName;

  String value;

  Object encode() {
    return <Object?>[
      dimensionName,
      value,
    ];
  }

  static DimensionStringMessage decode(Object result) {
    result as List<Object?>;
    return DimensionStringMessage(
      dimensionName: result[0]! as String,
      value: result[1]! as String,
    );
  }
}

class DimensionNumberMessage {
  DimensionNumberMessage({
    required this.dimensionName,
    required this.value,
  });

  String dimensionName;

  double value;

  Object encode() {
    return <Object?>[
      dimensionName,
      value,
    ];
  }

  static DimensionNumberMessage decode(Object result) {
    result as List<Object?>;
    return DimensionNumberMessage(
      dimensionName: result[0]! as String,
      value: result[1]! as double,
    );
  }
}

class DimensionBoolMessage {
  DimensionBoolMessage({
    required this.dimensionName,
    required this.value,
  });

  String dimensionName;

  bool value;

  Object encode() {
    return <Object?>[
      dimensionName,
      value,
    ];
  }

  static DimensionBoolMessage decode(Object result) {
    result as List<Object?>;
    return DimensionBoolMessage(
      dimensionName: result[0]! as String,
      value: result[1]! as bool,
    );
  }
}

class GoalMessage {
  GoalMessage({
    required this.goal,
    this.value,
  });

  String goal;

  double? value;

  Object encode() {
    return <Object?>[
      goal,
      value,
    ];
  }

  static GoalMessage decode(Object result) {
    result as List<Object?>;
    return GoalMessage(
      goal: result[0]! as String,
      value: result[1] as double?,
    );
  }
}

class LiveConfigurationPigeon {
  LiveConfigurationPigeon({
    this.overrideUserConfig,
    this.blockedFlutterSDKVersions,
    this.blockedFlutterAppVersions,
    this.maskingColor,
    this.showLocalLogs,
    this.imageQualityType,
    this.maxScreenshots,
    this.maxScreenDuration,
    this.disableScreenTracking,
    this.screensMasking,
  });

  bool? overrideUserConfig;

  List<String?>? blockedFlutterSDKVersions;

  List<String?>? blockedFlutterAppVersions;

  String? maskingColor;

  bool? showLocalLogs;

  int? imageQualityType;

  int? maxScreenshots;

  int? maxScreenDuration;

  List<String?>? disableScreenTracking;

  List<String?>? screensMasking;

  Object encode() {
    return <Object?>[
      overrideUserConfig,
      blockedFlutterSDKVersions,
      blockedFlutterAppVersions,
      maskingColor,
      showLocalLogs,
      imageQualityType,
      maxScreenshots,
      maxScreenDuration,
      disableScreenTracking,
      screensMasking,
    ];
  }

  static LiveConfigurationPigeon decode(Object result) {
    result as List<Object?>;
    return LiveConfigurationPigeon(
      overrideUserConfig: result[0] as bool?,
      blockedFlutterSDKVersions: (result[1] as List<Object?>?)?.cast<String?>(),
      blockedFlutterAppVersions: (result[2] as List<Object?>?)?.cast<String?>(),
      maskingColor: result[3] as String?,
      showLocalLogs: result[4] as bool?,
      imageQualityType: result[5] as int?,
      maxScreenshots: result[6] as int?,
      maxScreenDuration: result[7] as int?,
      disableScreenTracking: (result[8] as List<Object?>?)?.cast<String?>(),
      screensMasking: (result[9] as List<Object?>?)?.cast<String?>(),
    );
  }
}

class _MedalliaDxaNativeApiCodec extends StandardMessageCodec {
  const _MedalliaDxaNativeApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is DimensionBoolMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is DimensionNumberMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is DimensionStringMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is EndScreenMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is GoalMessage) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is LiveConfigurationPigeon) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is ScreenshotMessage) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is SessionMessage) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is StartScreenMessage) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return DimensionBoolMessage.decode(readValue(buffer)!);
      case 129: 
        return DimensionNumberMessage.decode(readValue(buffer)!);
      case 130: 
        return DimensionStringMessage.decode(readValue(buffer)!);
      case 131: 
        return EndScreenMessage.decode(readValue(buffer)!);
      case 132: 
        return GoalMessage.decode(readValue(buffer)!);
      case 133: 
        return LiveConfigurationPigeon.decode(readValue(buffer)!);
      case 134: 
        return ScreenshotMessage.decode(readValue(buffer)!);
      case 135: 
        return SessionMessage.decode(readValue(buffer)!);
      case 136: 
        return StartScreenMessage.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class MedalliaDxaNativeApi {
  /// Constructor for [MedalliaDxaNativeApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  MedalliaDxaNativeApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _MedalliaDxaNativeApiCodec();

  Future<LiveConfigurationPigeon> initialize(SessionMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.initialize', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as LiveConfigurationPigeon?)!;
    }
  }

  Future<void> startScreen(StartScreenMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.startScreen', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> endScreen(EndScreenMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.endScreen', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setConsents(int arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.setConsents', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> saveScreenshot(ScreenshotMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.saveScreenshot', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> sendDimensionWithString(DimensionStringMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.sendDimensionWithString', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> sendDimensionWithNumber(DimensionNumberMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.sendDimensionWithNumber', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> sendDimensionWithBool(DimensionBoolMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.sendDimensionWithBool', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> sendGoal(GoalMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.sendGoal', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> sendDataOverWifiOnly() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.sendDataOverWifiOnly', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> sendHttpError(int arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.sendHttpError', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> enableSessionForExperience(bool arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.enableSessionForExperience', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> enableSessionForAnalysis(bool arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.enableSessionForAnalysis', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> enableSessionForReplay(bool arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.enableSessionForReplay', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> enableScreenForAnalysis(bool arg_value) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.enableScreenForAnalysis', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_value]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<String> getWebViewProperties() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.getWebViewProperties', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<String> getSessionId() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.getSessionId', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<String> getSessionUrl() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MedalliaDxaNativeApi.getSessionUrl', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }
}
