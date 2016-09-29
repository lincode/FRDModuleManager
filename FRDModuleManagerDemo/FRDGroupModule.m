//
//  FRDGroupModule.m
//  FRDModuleManager
//
//  Created by GUO Lin on 9/29/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

#import "FRDGroupModule.h"

@implementation FRDGroupModule

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  NSLog(@"%@  Group", NSStringFromSelector(_cmd));
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  NSLog(@"%@  Group", NSStringFromSelector(_cmd));
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  NSLog(@"%@  Group", NSStringFromSelector(_cmd));
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  NSLog(@"%@  Group", NSStringFromSelector(_cmd));
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  NSLog(@"%@  Group", NSStringFromSelector(_cmd));
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  NSLog(@"%@  Group", NSStringFromSelector(_cmd));
}

@end
