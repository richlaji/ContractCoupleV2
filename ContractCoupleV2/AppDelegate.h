//
//  AppDelegate.h
//  ContractCoupleV2
//
//  Created by 张泽昕 on 16/5/30.
//  Copyright © 2016年 张泽昕. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LovingViewController.h"
#import "DiscoverViewController.h"
#import "ChattingViewController.h"
#import "MeViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) LovingViewController *lovingViewController;
@property (strong, nonatomic) DiscoverViewController *discoverViewController;
@property (strong, nonatomic) ChattingViewController *chattingViewController;
@property (strong, nonatomic) MeViewController *meViewController;

@end

