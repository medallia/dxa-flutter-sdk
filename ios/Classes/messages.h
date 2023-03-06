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
@class FLTConsentsMessage;
@class FLTScreenshotMessage;
@class FLTDimensionStringMessage;
@class FLTDimensionNumberMessage;
@class FLTDimensionBoolMessage;
@class FLTGoalMessage;

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
    consents:(NSArray<NSNumber *> *)consents
    version:(NSString *)version;
@property(nonatomic, strong) NSNumber * account;
@property(nonatomic, strong) NSNumber * property;
@property(nonatomic, strong) NSArray<NSNumber *> * consents;
@property(nonatomic, copy) NSString * version;
@end

@interface FLTConsentsMessage : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithConsents:(NSArray<NSNumber *> *)consents;
@property(nonatomic, strong) NSArray<NSNumber *> * consents;
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

/// The codec used by FLTMedalliaDxaNativeApi.
NSObject<FlutterMessageCodec> *FLTMedalliaDxaNativeApiGetCodec(void);

@protocol FLTMedalliaDxaNativeApi
- (void)initializeMsg:(FLTSessionMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)startScreenMsg:(FLTStartScreenMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)endScreenMsg:(FLTEndScreenMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setEnableConsentsMsg:(FLTConsentsMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)setDisableConsentsMsg:(FLTConsentsMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)saveScreenshotMsg:(FLTScreenshotMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendDimensionWithStringMsg:(FLTDimensionStringMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendDimensionWithNumberMsg:(FLTDimensionNumberMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendDimensionWithBoolMsg:(FLTDimensionBoolMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendGoalMsg:(FLTGoalMessage *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendDataOverWifiOnlyWithError:(FlutterError *_Nullable *_Nonnull)error;
- (void)sendHttpErrorMsg:(NSNumber *)msg error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableSessionForExperienceValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableSessionForAnalysisValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableSessionForReplayValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)enableScreenForAnalysisValue:(NSNumber *)value error:(FlutterError *_Nullable *_Nonnull)error;
- (void)getWebViewPropertiesWithCompletion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
- (void)getSessionIdWithCompletion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
@end

extern void FLTMedalliaDxaNativeApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTMedalliaDxaNativeApi> *_Nullable api);

NS_ASSUME_NONNULL_END
