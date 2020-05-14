//
//  ABUMintegralPersonaliseCfgAdapter.m
//  ABUDemo
//
//  Created by wangchao on 2020/4/16.
//  Copyright © 2020 wangchao. All rights reserved.
//

#import <MTGSDK/MTGSDK.h>
#import <ABUAdSDK/ABUAdapterPersonaliseConfigProtocol.h>

#import "ABUMintegralPersonaliseConfigAdapter.h"

@interface ABUMintegralPersonaliseConfigAdapter () <ABUAdapterPersonaliseConfigProtocol>

@end


@implementation ABUMintegralPersonaliseConfigAdapter

+ (void)setupPersonaliseConfiguration {
    // 第三方开发者在这设置GDTSDK一些个性化配置,详见MTGSDK
    // 不要在此写初始化代码！！！聚合SDK已完成初始化
    // 也不要再次进行广告的预加载！！！
    [[MTGSDK sharedInstance] setDisableIDFV:NO];
}


@end
