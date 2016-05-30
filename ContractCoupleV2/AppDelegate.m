//
//  AppDelegate.m
//  ContractCoupleV2
//
//  Created by 张泽昕 on 16/5/30.
//  Copyright © 2016年 张泽昕. All rights reserved.
//

#import "AppDelegate.h"


static NSString* const lovingViewTitle = @"恋爱";
static NSString* const discoverViewTitle = @"发现";
static NSString* const chattingViewTitle = @"聊天";
static NSString* const meViewTitle = @"我";


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    /* Setup RootViewController */
    //LovingView
    self.lovingViewController = [[LovingViewController alloc] init];
    UINavigationController *lovingViewNav = [[UINavigationController alloc] initWithRootViewController:self.lovingViewController];
    lovingViewNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:lovingViewTitle
                                                             image:[[UIImage imageNamed:@"menu_love"]
                                                                 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                     selectedImage:[[UIImage imageNamed:@"menu_love_on"]
                                                                    imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    lovingViewNav.tabBarItem.imageInsets = UIEdgeInsetsMake(6.0, 0.0, -6.0, 0.0);
    
    //DiscoverView
    self.discoverViewController = [[DiscoverViewController alloc] init];
    UINavigationController *discoverViewNav = [[UINavigationController alloc] initWithRootViewController:self.discoverViewController];
    discoverViewNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:discoverViewTitle
                                                             image:[[UIImage imageNamed:@"menu_find"]
                                                                    imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                     selectedImage:[[UIImage imageNamed:@"menu_find_on"]
                                                                    imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    discoverViewNav.tabBarItem.imageInsets = UIEdgeInsetsMake(6.0, 0.0, -6.0, 0.0);
    
    //ChattingView
    self.chattingViewController = [[ChattingViewController alloc] init];
    UINavigationController *chattingViewNav = [[UINavigationController alloc] initWithRootViewController:self.chattingViewController];
    chattingViewNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:chattingViewTitle
                                                             image:[[UIImage imageNamed:@"menu_chat"]
                                                                    imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                     selectedImage:[[UIImage imageNamed:@"menu_chat_on"]
                                                                    imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    chattingViewNav.tabBarItem.imageInsets = UIEdgeInsetsMake(6.0, 0.0, -6.0, 0.0);
    
    //MeView
    self.meViewController = [[MeViewController alloc] init];
    UINavigationController *meViewNav = [[UINavigationController alloc] initWithRootViewController:self.meViewController];
    meViewNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:meViewTitle
                                                             image:[[UIImage imageNamed:@"menu_me"]
                                                                    imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                     selectedImage:[[UIImage imageNamed:@"menu_me_on"]
                                                                    imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    meViewNav.tabBarItem.imageInsets = UIEdgeInsetsMake(6.0, 0.0, -6.0, 0.0);
    
    //TabBar
    UITabBarController *rootTabBarView = [[UITabBarController alloc] init];
    rootTabBarView.viewControllers = @[lovingViewNav, discoverViewNav, chattingViewNav, meViewNav];
    rootTabBarView.tabBar.tintColor = [UIColor colorWithRed:0.07 green:0.73 blue:0.02 alpha:1.0];
    rootTabBarView.tabBar.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1];
    //rootTabBarView.selectedIndex = kDefaultTabIndex;
    
    //Set Root View
    UINavigationController *rootNav = [[UINavigationController alloc] initWithRootViewController:rootTabBarView];
    self.window.rootViewController = rootNav;
    
    //Setup navigation
    /* Setup NavigationBar */
    
    //TabBarItem选中字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:236.0/255.0 green:67.0/255.0 blue:108.0/255.0 alpha:1.0]}
                                             forState:UIControlStateSelected];
    
    //
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
