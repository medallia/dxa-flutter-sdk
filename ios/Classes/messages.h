// Autogenerated from Pigeon (v9.0.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

@class FLTStartScreenMessage;
@class FLTEndScreenMessage;
@class FLTSessionMessage;
@class FLTScreenshotMessage;
@class FLTDimensionStringMessage;
@class FLTDimensionNumberMessage;
@class FLTDimensionBoolMessage;
@class FLTGoalMessage;
@class FLTLiveConfigurationPigeon;

@interface FLTStartScreenMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithScreenName:(NSString *)screenName
    screenId:(NSNumber *)screenId
    startTime:(NSNumber *)startTime
    isBackground:(NSNumber *)isBackground;
@property(nonatomic, copy) NSString * screenName;
@property(nonatomic, strong) NSNumber * screenId;
@property(nonatomic, strong) NSNumber * startTime;
@property(nonatomic, strong) NSNumber * isBackground;
@end

@interface FLTEndScreenMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithScreenName:(NSString *)screenName
    screenId:(NSNumber *)screenId
    endTime:(NSNumber *)endTime
    isBackground:(NSNumber *)isBackground;
@property(nonatomic, copy) NSString * screenName;
@property(nonatomic, strong) NSNumber * screenId;
@property(nonatomic, strong) NSNumber * endTime;
@property(nonatomic, strong) NSNumber * isBackground;
@end

@interface FLTSessionMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithAccount:(NSNumber *)account
    property:(NSNumber *)property
    consents:(NSNumber *)consents
    version:(NSString *)version;
@property(nonatomic, strong) NSNumber * account;
@property(nonatomic, strong) NSNumber * property;
@property(nonatomic, strong) NSNumber * consents;
@property(nonatomic, copy) NSString * version;
@end

@interface FLTScreenshotMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithScreenshotData:(FlutterStandardTypedData *)screenshotData
    screenId:(NSNumber *)screenId
    screenName:(NSString *)screenName
    startFocusTime:(NSNumber *)startFocusTime;
@property(nonatomic, strong) FlutterStandardTypedData * screenshotData;
@property(nonatomic, strong) NSNumber * screenId;
@property(nonatomic, copy) NSString * screenName;
@property(nonatomic, strong) NSNumber * startFocusTime;
@end

@interface FLTDimensionStringMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithDimensionName:(NSString *)dimensionName
    value:(NSString *)value;
@property(nonatomic, copy) NSString * dimensionName;
@property(nonatomic, copy) NSString * value;
@end

@interface FLTDimensionNumberMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithDimensionName:(NSString *)dimensionName
    value:(NSNumber *)value;
@property(nonatomic, copy) NSString * dimensionName;
@property(nonatomic, strong) NSNumber * value;
@end

@interface FLTDimensionBoolMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithDimensionName:(NSString *)dimensionName
    value:(NSNumber *)value;
@property(nonatomic, copy) NSString * dimensionName;
@property(nonatomic, strong) NSNumber * value;
@end

@interface FLTGoalMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithGoal:(NSString *)goal
    value:(nullable NSNumber *)value;
@property(nonatomic, copy) NSString * goal;
@property(nonatomic, strong, nullable) NSNumber * value;
@end

@interface FLTLiveConfigurationPigeon : NSObject
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
    screensMasking:(nullable NSArray<NSString *> *)screensMasking;
@property(nonatomic, strong, nullable) NSNumber * overrideUserConfig;
@property(nonatomic, strong, nullable) NSArray<NSString *> * blockedFlutterSDKVersions;
@property(nonatomic, strong, nullable) NSArray<NSString *> * blockedFlutterAppVersions;
@property(nonatomic, copy, nullable) NSString * maskingColor;
@property(nonatomic, strong, nullable) NSNumber * showLocalLogs;
@property(nonatomic, strong, nullable) NSNumber * imageQualityType;
@property(nonatomic, strong, nullable) NSNumber * videoQualityType;
@property(nonatomic, strong, nullable) NSNumber * maxScreenshots;
@property(nonatomic, strong, nullable) NSNumber * maxScreenDuration;
@property(nonatomic, strong, nullable) NSArray<NSString *> * disableScreenTracking;
@property(nonatomic, strong, nullable) NSArray<NSString *> * screensMasking;
@end

/// The codec used by FLTMedalliaDxaNativeApi.
NSObject<FlutterMessageCodec> *FLTMedalliaDxaNativeApiGetCodec(void);

@protocol FLTMedalliaDxaNativeApi
- (void)initializeMsg:(FLTSessionMessage *)msg completion:(void (^)(FLTLiveConfigurationPigeon *_Nullable, FlutterError *_Nullable))completion;
- (void)startScreenMsg:(FLTStartScreenMessage *)msg completion:(void (^)(FlutterError *_Nullable))completion;
- (void)endScreenMsg:(FLTEndScreenMessage *)msg completion:(void (^)(FlutterError *_Nullable))completion;
- (void)setConsentsValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)saveScreenshotMsg:(FLTScreenshotMessage *)msg completion:(void (^)(FlutterError *_Nullable))completion;
- (void)sendDimensionWithStringMsg:(FLTDimensionStringMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendDimensionWithNumberMsg:(FLTDimensionNumberMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendDimensionWithBoolMsg:(FLTDimensionBoolMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendGoalMsg:(FLTGoalMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendDataOverWifiOnlyWithError:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendHttpErrorMsg:(NSNumber *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendImageQualityImageQuality:(NSNumber *)imageQuality error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableSessionForExperienceValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableSessionForAnalysisValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableSessionForReplayValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableScreenForAnalysisValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)getWebViewPropertiesWithCompletion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
- (void)getSessionIdWithCompletion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
- (void)getSessionUrlWithCompletion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
@end

extern void FLTMedalliaDxaNativeApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTMedalliaDxaNativeApi> *_Nullable api);

NS_ASSUME_NONNULL_END
