//
//  FRDModuleManager.h
//  FRDModuleManager
//
//  Created by GUO Lin on 9/29/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

@import UIKit;

@protocol FRDModule <UIApplicationDelegate>

@end


@interface FRDModuleManager : NSObject<UIApplicationDelegate>

+ (instancetype)sharedInstance;

- (void)loadModulesWithPlistFile:(NSString *)plistFile;

- (NSArray<id<FRDModule>> *)allModules;

@end
