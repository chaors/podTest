//
//  ABUAdmobPersonaliseCfgAdapter.m
//  ABUDemo
//
//  Created by wangchao on 2020/4/16.
//  Copyright © 2020 wangchao. All rights reserved.
//


#import <GoogleMobileAds/GoogleMobileAds.h>
#import <ABUAdSDK/ABUAdapterPersonaliseConfigProtocol.h>

#import "ABUAdmobPersonaliseConfigAdapter.h"


@interface ABUAdmobPersonaliseConfigAdapter () <ABUAdapterPersonaliseConfigProtocol>

@end


@implementation ABUAdmobPersonaliseConfigAdapter
+ (void)setupPersonaliseConfiguration {
    // 第三方开发者在这设置GADMobileAds一些个性化配置
    // 不要在此写初始化代码！！！聚合SDK已完成初始化
    [GADMobileAds sharedInstance].applicationMuted = YES;
    
    // 支持模拟器
    [GADMobileAds sharedInstance].requestConfiguration.testDeviceIdentifiers = @[
        kGADSimulatorID,
        @"7332fdb574f3388c808b8ef2d459cd32",
        @"1ecdf6f84db8765e67fdf03913acb09b",
    ];
}

@end
