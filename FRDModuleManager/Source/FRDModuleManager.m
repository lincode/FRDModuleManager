//
//  FRDModuleManager.m
//  FRDModuleManager
//
//  Created by GUO Lin on 9/29/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

#import "FRDModuleManager.h"

@interface FRDModuleManager ()

@property (nonatomic, strong) NSMutableArray<id<FRDModule>> *modules;

@end

@implementation FRDModuleManager

+ (instancetype)sharedInstance
{
  static FRDModuleManager *instance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[[self class] alloc] init];
  });
  return instance;
}


- (NSMutableArray<id<FRDModule>> *)modules
{
  if (!_modules) {
    _modules = [NSMutableArray array];
  }
  return _modules;
}

- (void)addModule:(id<FRDModule>) module
{
  if (![self.modules containsObject:module]) {
    [self.modules addObject:module];
  }
}

- (void)loadModulesWithPlistFile:(NSString *)plistFile
{
  NSArray<NSString *> *moduleNames = [NSArray arrayWithContentsOfFile:plistFile];
  for (NSString *moduleName in moduleNames) {
    id<FRDModule> module = [[NSClassFromString(moduleName) alloc] init];
    [self addModule:module];
  }
}

- (NSArray<id<FRDModule>> *)allModules
{
  return self.modules;
}

#pragma mark - UIApplicationDelegate's methods

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  for (id<FRDModule> module in self.modules) {
    if ([module respondsToSelector:_cmd]) {
      [module application:application didFinishLaunchingWithOptions:launchOptions];
    }
  }
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  for (id<FRDModule> module in self.modules) {
    if ([module respondsToSelector:_cmd]) {
      [module applicationWillResignActive:application];
    }
  }
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  for (id<FRDModule> module in self.modules) {
    if ([module respondsToSelector:_cmd]) {
      [module applicationDidEnterBackground:application];
    }
  }
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  for (id<FRDModule> module in self.modules) {
    if ([module respondsToSelector:_cmd]) {
      [module applicationWillEnterForeground:application];
    }
  }
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  for (id<FRDModule> module in self.modules) {
    if ([module respondsToSelector:_cmd]) {
      [module applicationDidBecomeActive:application];
    }
  }
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  for (id<FRDModule> module in self.modules) {
    if ([module respondsToSelector:_cmd]) {
      [module applicationWillTerminate:application];
    }
  }
}

@end
