//
//  FRDModuleManager.h
//  FRDModuleManager
//
//  Created by GUO Lin on 9/29/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

@import UIKit;
@import UserNotifications;

@protocol FRDModule <UIApplicationDelegate, UNUserNotificationCenterDelegate>

@end


@interface FRDModuleManager : NSObject<UIApplicationDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)sharedInstance;

- (void)loadModulesWithPlistFile:(NSString *)plistFile;

- (NSArray<id<FRDModule>> *)allModules;

@end
