//
//  ABUGdtPersonaliseCfgAdapter.m
//  ABUDemo
//
//  Created by wangchao on 2020/4/16.
//  Copyright © 2020 wangchao. All rights reserved.
//


#import <GDTSDKConfig.h>
#import <ABUAdSDK/ABUAdapterPersonaliseConfigProtocol.h>

#import "ABUGdtPersonaliseConfigAdapter.h"


@interface ABUGdtPersonaliseConfigAdapter () <ABUAdapterPersonaliseConfigProtocol>

@end


@implementation ABUGdtPersonaliseConfigAdapter

#pragma mark ---<ABUAdapterPersonaliseConfigProtocol>---
+ (void)setupPersonaliseConfiguration {
    // 第三方开发者在这设置GDTSDK一些个性化配置,详见GDTSDKConfig
    // 不要在此写初始化代码！！！聚合SDK已完成初始化
    [GDTSDKConfig enableGPS:NO];
//    [GDTSDKConfig setChannel:999];
}

@end
