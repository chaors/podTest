//
//  ABUAdSlot.h
//  BUAdSDK
//
//  Copyright © 2017 bytedance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

#import "ABUSize.h"

typedef NS_ENUM(NSInteger, ABUAdSlotAdType) {
    ABUAdSlotAdTypeUnknown       = 0,
    ABUAdSlotAdTypeBanner        = 1,       // banner ads
    ABUAdSlotAdTypeInterstitial  = 2,       // interstitial ads
    ABUAdSlotAdTypeSplash        = 3,       // splash ads
    ABUAdSlotAdTypeSplash_Cache  = 4,       // cache splash ads
    ABUAdSlotAdTypeFeed          = 5,       // feed ads
    ABUAdSlotAdTypePaster        = 6,       // paster ads
    ABUAdSlotAdTypeRewardVideo   = 7,       // rewarded video ads
    ABUAdSlotAdTypeFullscreenVideo = 8,     // full-screen video ads
    ABUAdSlotAdTypeDrawVideo     = 9,       // vertical (immersive) video ads
};

typedef NS_ENUM(NSInteger, ABUAdSlotPosition) {
    ABUAdSlotPositionTop = 1,
    ABUAdSlotPositionBottom = 2,
    ABUAdSlotPositionFeed = 3,
    ABUAdSlotPositionMiddle = 4, // for interstitial ad only
    ABUAdSlotPositionFullscreen = 5, 
};

@interface ABUAdSlot : NSObject

/// required. The unique identifier of a native ad.
@property (nonatomic, copy) NSString *ID;

/// required. Ad type.
@property (nonatomic, assign) ABUAdSlotAdType AdType;

/// required. Ad display location.
@property (nonatomic, assign) ABUAdSlotPosition position;

/// Accept a set of image sizes, please pass in the ABUSize object.
@property (nonatomic, strong) NSMutableArray<ABUSize *> *imgSizeArray;

/// required. Image size.
@property (nonatomic, strong) ABUSize *imgSize;

/// Icon size.
@property (nonatomic, strong) ABUSize *iconSize;

/// Maximum length of the title.
@property (nonatomic, assign) NSInteger titleLengthLimit;

/// Maximum length of description.
@property (nonatomic, assign) NSInteger descLengthLimit;

/// Whether to support deeplink.
@property (nonatomic, assign) BOOL isSupportDeepLink;

/// Native banner ads and native interstitial ads are set to 1, other ad types are 0, the default is 0.
@property (nonatomic, assign) BOOL isOriginAd;

@property (nonatomic, assign) CGSize adSize;

- (NSDictionary *)dictionaryValue;

@end

