// Autogenerated from Pigeon (v9.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "messages.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface FLTStartScreenMessage ()
+ (FLTStartScreenMessage *)fromList:(NSArray *)list;
+ (nullable FLTStartScreenMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTEndScreenMessage ()
+ (FLTEndScreenMessage *)fromList:(NSArray *)list;
+ (nullable FLTEndScreenMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTSessionMessage ()
+ (FLTSessionMessage *)fromList:(NSArray *)list;
+ (nullable FLTSessionMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTScreenshotMessage ()
+ (FLTScreenshotMessage *)fromList:(NSArray *)list;
+ (nullable FLTScreenshotMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTDimensionStringMessage ()
+ (FLTDimensionStringMessage *)fromList:(NSArray *)list;
+ (nullable FLTDimensionStringMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTDimensionNumberMessage ()
+ (FLTDimensionNumberMessage *)fromList:(NSArray *)list;
+ (nullable FLTDimensionNumberMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTDimensionBoolMessage ()
+ (FLTDimensionBoolMessage *)fromList:(NSArray *)list;
+ (nullable FLTDimensionBoolMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTGoalMessage ()
+ (FLTGoalMessage *)fromList:(NSArray *)list;
+ (nullable FLTGoalMessage *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTLiveConfigurationPigeon ()
+ (FLTLiveConfigurationPigeon *)fromList:(NSArray *)list;
+ (nullable FLTLiveConfigurationPigeon *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation FLTStartScreenMessage
+ (instancetype)makeWithScreenName:(NSString *)screenName
    screenId:(NSNumber *)screenId
    startTime:(NSNumber *)startTime
    isBackground:(NSNumber *)isBackground {
  FLTStartScreenMessage* pigeonResult = [[FLTStartScreenMessage alloc] init];
  pigeonResult.screenName = screenName;
  pigeonResult.screenId = screenId;
  pigeonResult.startTime = startTime;
  pigeonResult.isBackground = isBackground;
  return pigeonResult;
}
+ (FLTStartScreenMessage *)fromList:(NSArray *)list {
  FLTStartScreenMessage *pigeonResult = [[FLTStartScreenMessage alloc] init];
  pigeonResult.screenName = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.screenName != nil, @"");
  pigeonResult.screenId = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.screenId != nil, @"");
  pigeonResult.startTime = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.startTime != nil, @"");
  pigeonResult.isBackground = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.isBackground != nil, @"");
  return pigeonResult;
}
+ (nullable FLTStartScreenMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTStartScreenMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.screenName ?: [NSNull null]),
    (self.screenId ?: [NSNull null]),
    (self.startTime ?: [NSNull null]),
    (self.isBackground ?: [NSNull null]),
  ];
}
@end

@implementation FLTEndScreenMessage
+ (instancetype)makeWithScreenName:(NSString *)screenName
    screenId:(NSNumber *)screenId
    endTime:(NSNumber *)endTime
    isBackground:(NSNumber *)isBackground {
  FLTEndScreenMessage* pigeonResult = [[FLTEndScreenMessage alloc] init];
  pigeonResult.screenName = screenName;
  pigeonResult.screenId = screenId;
  pigeonResult.endTime = endTime;
  pigeonResult.isBackground = isBackground;
  return pigeonResult;
}
+ (FLTEndScreenMessage *)fromList:(NSArray *)list {
  FLTEndScreenMessage *pigeonResult = [[FLTEndScreenMessage alloc] init];
  pigeonResult.screenName = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.screenName != nil, @"");
  pigeonResult.screenId = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.screenId != nil, @"");
  pigeonResult.endTime = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.endTime != nil, @"");
  pigeonResult.isBackground = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.isBackground != nil, @"");
  return pigeonResult;
}
+ (nullable FLTEndScreenMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTEndScreenMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.screenName ?: [NSNull null]),
    (self.screenId ?: [NSNull null]),
    (self.endTime ?: [NSNull null]),
    (self.isBackground ?: [NSNull null]),
  ];
}
@end

@implementation FLTSessionMessage
+ (instancetype)makeWithAccount:(NSNumber *)account
    property:(NSNumber *)property
    consents:(NSNumber *)consents
    version:(NSString *)version
    crashReporterEnabled:(NSNumber *)crashReporterEnabled
    mobileDataEnabled:(NSNumber *)mobileDataEnabled {
  FLTSessionMessage* pigeonResult = [[FLTSessionMessage alloc] init];
  pigeonResult.account = account;
  pigeonResult.property = property;
  pigeonResult.consents = consents;
  pigeonResult.version = version;
  pigeonResult.crashReporterEnabled = crashReporterEnabled;
  pigeonResult.mobileDataEnabled = mobileDataEnabled;
  return pigeonResult;
}
+ (FLTSessionMessage *)fromList:(NSArray *)list {
  FLTSessionMessage *pigeonResult = [[FLTSessionMessage alloc] init];
  pigeonResult.account = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.account != nil, @"");
  pigeonResult.property = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.property != nil, @"");
  pigeonResult.consents = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.consents != nil, @"");
  pigeonResult.version = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.version != nil, @"");
  pigeonResult.crashReporterEnabled = GetNullableObjectAtIndex(list, 4);
  NSAssert(pigeonResult.crashReporterEnabled != nil, @"");
  pigeonResult.mobileDataEnabled = GetNullableObjectAtIndex(list, 5);
  NSAssert(pigeonResult.mobileDataEnabled != nil, @"");
  return pigeonResult;
}
+ (nullable FLTSessionMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTSessionMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.account ?: [NSNull null]),
    (self.property ?: [NSNull null]),
    (self.consents ?: [NSNull null]),
    (self.version ?: [NSNull null]),
    (self.crashReporterEnabled ?: [NSNull null]),
    (self.mobileDataEnabled ?: [NSNull null]),
  ];
}
@end

@implementation FLTScreenshotMessage
+ (instancetype)makeWithScreenshotData:(FlutterStandardTypedData *)screenshotData
    screenId:(NSNumber *)screenId
    screenName:(NSString *)screenName
    startFocusTime:(NSNumber *)startFocusTime {
  FLTScreenshotMessage* pigeonResult = [[FLTScreenshotMessage alloc] init];
  pigeonResult.screenshotData = screenshotData;
  pigeonResult.screenId = screenId;
  pigeonResult.screenName = screenName;
  pigeonResult.startFocusTime = startFocusTime;
  return pigeonResult;
}
+ (FLTScreenshotMessage *)fromList:(NSArray *)list {
  FLTScreenshotMessage *pigeonResult = [[FLTScreenshotMessage alloc] init];
  pigeonResult.screenshotData = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.screenshotData != nil, @"");
  pigeonResult.screenId = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.screenId != nil, @"");
  pigeonResult.screenName = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.screenName != nil, @"");
  pigeonResult.startFocusTime = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.startFocusTime != nil, @"");
  return pigeonResult;
}
+ (nullable FLTScreenshotMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTScreenshotMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.screenshotData ?: [NSNull null]),
    (self.screenId ?: [NSNull null]),
    (self.screenName ?: [NSNull null]),
    (self.startFocusTime ?: [NSNull null]),
  ];
}
@end

@implementation FLTDimensionStringMessage
+ (instancetype)makeWithDimensionName:(NSString *)dimensionName
    value:(NSString *)value {
  FLTDimensionStringMessage* pigeonResult = [[FLTDimensionStringMessage alloc] init];
  pigeonResult.dimensionName = dimensionName;
  pigeonResult.value = value;
  return pigeonResult;
}
+ (FLTDimensionStringMessage *)fromList:(NSArray *)list {
  FLTDimensionStringMessage *pigeonResult = [[FLTDimensionStringMessage alloc] init];
  pigeonResult.dimensionName = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.dimensionName != nil, @"");
  pigeonResult.value = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.value != nil, @"");
  return pigeonResult;
}
+ (nullable FLTDimensionStringMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTDimensionStringMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.dimensionName ?: [NSNull null]),
    (self.value ?: [NSNull null]),
  ];
}
@end

@implementation FLTDimensionNumberMessage
+ (instancetype)makeWithDimensionName:(NSString *)dimensionName
    value:(NSNumber *)value {
  FLTDimensionNumberMessage* pigeonResult = [[FLTDimensionNumberMessage alloc] init];
  pigeonResult.dimensionName = dimensionName;
  pigeonResult.value = value;
  return pigeonResult;
}
+ (FLTDimensionNumberMessage *)fromList:(NSArray *)list {
  FLTDimensionNumberMessage *pigeonResult = [[FLTDimensionNumberMessage alloc] init];
  pigeonResult.dimensionName = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.dimensionName != nil, @"");
  pigeonResult.value = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.value != nil, @"");
  return pigeonResult;
}
+ (nullable FLTDimensionNumberMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTDimensionNumberMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.dimensionName ?: [NSNull null]),
    (self.value ?: [NSNull null]),
  ];
}
@end

@implementation FLTDimensionBoolMessage
+ (instancetype)makeWithDimensionName:(NSString *)dimensionName
    value:(NSNumber *)value {
  FLTDimensionBoolMessage* pigeonResult = [[FLTDimensionBoolMessage alloc] init];
  pigeonResult.dimensionName = dimensionName;
  pigeonResult.value = value;
  return pigeonResult;
}
+ (FLTDimensionBoolMessage *)fromList:(NSArray *)list {
  FLTDimensionBoolMessage *pigeonResult = [[FLTDimensionBoolMessage alloc] init];
  pigeonResult.dimensionName = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.dimensionName != nil, @"");
  pigeonResult.value = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.value != nil, @"");
  return pigeonResult;
}
+ (nullable FLTDimensionBoolMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTDimensionBoolMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.dimensionName ?: [NSNull null]),
    (self.value ?: [NSNull null]),
  ];
}
@end

@implementation FLTGoalMessage
+ (instancetype)makeWithGoal:(NSString *)goal
    value:(nullable NSNumber *)value {
  FLTGoalMessage* pigeonResult = [[FLTGoalMessage alloc] init];
  pigeonResult.goal = goal;
  pigeonResult.value = value;
  return pigeonResult;
}
+ (FLTGoalMessage *)fromList:(NSArray *)list {
  FLTGoalMessage *pigeonResult = [[FLTGoalMessage alloc] init];
  pigeonResult.goal = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.goal != nil, @"");
  pigeonResult.value = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable FLTGoalMessage *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTGoalMessage fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.goal ?: [NSNull null]),
    (self.value ?: [NSNull null]),
  ];
}
@end

@implementation FLTLiveConfigurationPigeon
+ (instancetype)makeWithOverrideUserConfig:(nullable NSNumber *)overrideUserConfig
    blockedFlutterSDKVersions:(nullable NSArray<NSString *> *)blockedFlutterSDKVersions
    blockedFlutterAppVersions:(nullable NSArray<NSString *> *)blockedFlutterAppVersions
    maskingColor:(nullable NSString *)maskingColor
    showLocalLogs:(nullable NSNumber *)showLocalLogs
    imageQualityType:(nullable NSNumber *)imageQualityType
    videoQualityType:(nullable NSNumber *)videoQualityType
    maxScreenshots:(nullable NSNumber *)maxScreenshots
    maxScreenDuration:(nullable NSNumber *)maxScreenDuration
    disableScreenTracking:(nullable NSArray<NSString *> *)disableScreenTracking
    screensMasking:(nullable NSArray<NSString *> *)screensMasking
    appVersion:(nullable NSString *)appVersion {
  FLTLiveConfigurationPigeon* pigeonResult = [[FLTLiveConfigurationPigeon alloc] init];
  pigeonResult.overrideUserConfig = overrideUserConfig;
  pigeonResult.blockedFlutterSDKVersions = blockedFlutterSDKVersions;
  pigeonResult.blockedFlutterAppVersions = blockedFlutterAppVersions;
  pigeonResult.maskingColor = maskingColor;
  pigeonResult.showLocalLogs = showLocalLogs;
  pigeonResult.imageQualityType = imageQualityType;
  pigeonResult.videoQualityType = videoQualityType;
  pigeonResult.maxScreenshots = maxScreenshots;
  pigeonResult.maxScreenDuration = maxScreenDuration;
  pigeonResult.disableScreenTracking = disableScreenTracking;
  pigeonResult.screensMasking = screensMasking;
  pigeonResult.appVersion = appVersion;
  return pigeonResult;
}
+ (FLTLiveConfigurationPigeon *)fromList:(NSArray *)list {
  FLTLiveConfigurationPigeon *pigeonResult = [[FLTLiveConfigurationPigeon alloc] init];
  pigeonResult.overrideUserConfig = GetNullableObjectAtIndex(list, 0);
  pigeonResult.blockedFlutterSDKVersions = GetNullableObjectAtIndex(list, 1);
  pigeonResult.blockedFlutterAppVersions = GetNullableObjectAtIndex(list, 2);
  pigeonResult.maskingColor = GetNullableObjectAtIndex(list, 3);
  pigeonResult.showLocalLogs = GetNullableObjectAtIndex(list, 4);
  pigeonResult.imageQualityType = GetNullableObjectAtIndex(list, 5);
  pigeonResult.videoQualityType = GetNullableObjectAtIndex(list, 6);
  pigeonResult.maxScreenshots = GetNullableObjectAtIndex(list, 7);
  pigeonResult.maxScreenDuration = GetNullableObjectAtIndex(list, 8);
  pigeonResult.disableScreenTracking = GetNullableObjectAtIndex(list, 9);
  pigeonResult.screensMasking = GetNullableObjectAtIndex(list, 10);
  pigeonResult.appVersion = GetNullableObjectAtIndex(list, 11);
  return pigeonResult;
}
+ (nullable FLTLiveConfigurationPigeon *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTLiveConfigurationPigeon fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.overrideUserConfig ?: [NSNull null]),
    (self.blockedFlutterSDKVersions ?: [NSNull null]),
    (self.blockedFlutterAppVersions ?: [NSNull null]),
    (self.maskingColor ?: [NSNull null]),
    (self.showLocalLogs ?: [NSNull null]),
    (self.imageQualityType ?: [NSNull null]),
    (self.videoQualityType ?: [NSNull null]),
    (self.maxScreenshots ?: [NSNull null]),
    (self.maxScreenDuration ?: [NSNull null]),
    (self.disableScreenTracking ?: [NSNull null]),
    (self.screensMasking ?: [NSNull null]),
    (self.appVersion ?: [NSNull null]),
  ];
}
@end

@interface FLTMedalliaDxaNativeApiCodecReader : FlutterStandardReader
@end
@implementation FLTMedalliaDxaNativeApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [FLTDimensionBoolMessage fromList:[self readValue]];
    case 129: 
      return [FLTDimensionNumberMessage fromList:[self readValue]];
    case 130: 
      return [FLTDimensionStringMessage fromList:[self readValue]];
    case 131: 
      return [FLTEndScreenMessage fromList:[self readValue]];
    case 132: 
      return [FLTGoalMessage fromList:[self readValue]];
    case 133: 
      return [FLTLiveConfigurationPigeon fromList:[self readValue]];
    case 134: 
      return [FLTScreenshotMessage fromList:[self readValue]];
    case 135: 
      return [FLTSessionMessage fromList:[self readValue]];
    case 136: 
      return [FLTStartScreenMessage fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FLTMedalliaDxaNativeApiCodecWriter : FlutterStandardWriter
@end
@implementation FLTMedalliaDxaNativeApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[FLTDimensionBoolMessage class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTDimensionNumberMessage class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTDimensionStringMessage class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTEndScreenMessage class]]) {
    [self writeByte:131];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTGoalMessage class]]) {
    [self writeByte:132];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTLiveConfigurationPigeon class]]) {
    [self writeByte:133];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTScreenshotMessage class]]) {
    [self writeByte:134];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTSessionMessage class]]) {
    [self writeByte:135];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTStartScreenMessage class]]) {
    [self writeByte:136];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FLTMedalliaDxaNativeApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTMedalliaDxaNativeApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTMedalliaDxaNativeApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTMedalliaDxaNativeApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLTMedalliaDxaNativeApiGetCodec() {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLTMedalliaDxaNativeApiCodecReaderWriter *readerWriter = [[FLTMedalliaDxaNativeApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void FLTMedalliaDxaNativeApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTMedalliaDxaNativeApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.initialize"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(initializeMsg:completion:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(initializeMsg:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTSessionMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        [api initializeMsg:arg_msg completion:^(FLTLiveConfigurationPigeon *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.startScreen"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(startScreenMsg:completion:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(startScreenMsg:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTStartScreenMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        [api startScreenMsg:arg_msg completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.endScreen"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(endScreenMsg:completion:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(endScreenMsg:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTEndScreenMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        [api endScreenMsg:arg_msg completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.setConsents"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setConsentsValue:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(setConsentsValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_value = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setConsentsValue:arg_value error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.saveScreenshot"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(saveScreenshotMsg:completion:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(saveScreenshotMsg:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTScreenshotMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        [api saveScreenshotMsg:arg_msg completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.sendDimensionWithString"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(sendDimensionWithStringMsg:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(sendDimensionWithStringMsg:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTDimensionStringMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api sendDimensionWithStringMsg:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.sendDimensionWithNumber"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(sendDimensionWithNumberMsg:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(sendDimensionWithNumberMsg:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTDimensionNumberMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api sendDimensionWithNumberMsg:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.sendDimensionWithBool"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(sendDimensionWithBoolMsg:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(sendDimensionWithBoolMsg:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTDimensionBoolMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api sendDimensionWithBoolMsg:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.sendGoal"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(sendGoalMsg:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(sendGoalMsg:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTGoalMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api sendGoalMsg:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.sendDataOverWifiOnly"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(sendDataOverWifiOnlyWithError:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(sendDataOverWifiOnlyWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api sendDataOverWifiOnlyWithError:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.sendHttpError"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(sendHttpErrorMsg:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(sendHttpErrorMsg:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api sendHttpErrorMsg:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.sendImageQuality"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(sendImageQualityImageQuality:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(sendImageQualityImageQuality:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_imageQuality = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api sendImageQualityImageQuality:arg_imageQuality error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.enableSessionForExperience"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(enableSessionForExperienceValue:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(enableSessionForExperienceValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_value = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api enableSessionForExperienceValue:arg_value error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.enableSessionForAnalysis"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(enableSessionForAnalysisValue:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(enableSessionForAnalysisValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_value = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api enableSessionForAnalysisValue:arg_value error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.enableSessionForReplay"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(enableSessionForReplayValue:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(enableSessionForReplayValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_value = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api enableSessionForReplayValue:arg_value error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.enableScreenForAnalysis"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(enableScreenForAnalysisValue:error:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(enableScreenForAnalysisValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_value = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api enableScreenForAnalysisValue:arg_value error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.getWebViewProperties"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getWebViewPropertiesWithCompletion:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(getWebViewPropertiesWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getWebViewPropertiesWithCompletion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.getSessionId"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getSessionIdWithCompletion:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(getSessionIdWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getSessionIdWithCompletion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.MedalliaDxaNativeApi.getSessionUrl"
        binaryMessenger:binaryMessenger
        codec:FLTMedalliaDxaNativeApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getSessionUrlWithCompletion:)], @"FLTMedalliaDxaNativeApi api (%@) doesn't respond to @selector(getSessionUrlWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getSessionUrlWithCompletion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
