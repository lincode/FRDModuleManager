//
//  AppDelegate.m
//  FRDModuleManagerDemo
//
//  Created by GUO Lin on 9/29/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

#import "FRDModuleManager.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {


  NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"ModulesRegister" ofType:@"plist"];

  FRDModuleManager *manager = [FRDModuleManager sharedInstance];
  [manager loadModulesWithPlistFile:plistPath];

  [manager application:application didFinishLaunchingWithOptions:launchOptions];

  return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.

  [[FRDModuleManager sharedInstance] applicationWillResignActive:application];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  [[FRDModuleManager sharedInstance] applicationDidEnterBackground:application];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  [[FRDModuleManager sharedInstance] applicationWillEnterForeground:application];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  [[FRDModuleManager sharedInstance] applicationDidBecomeActive:application];
}


- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  [[FRDModuleManager sharedInstance] applicationWillTerminate:application];
}


@end
