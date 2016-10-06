//
//  FRDModuleManagerTests.m
//  FRDModuleManagerTests
//
//  Created by GUO Lin on 9/29/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "FRDModuleManager.h"
#import "TestModule.h"

@interface FRDModuleManagerTests : XCTestCase

@end

@implementation FRDModuleManagerTests


- (void)testModuleManager {

  NSBundle *bundle = [NSBundle bundleForClass:[self class]];
  NSString* plistPath = [bundle pathForResource:@"TestModulesRegister" ofType:@"plist"];
  [[FRDModuleManager sharedInstance] loadModulesWithPlistFile:plistPath];
  NSArray *modules = [[FRDModuleManager sharedInstance] allModules];
  XCTAssert(modules.count == 1);

  id<FRDModule> module = [modules firstObject];

  XCTAssert([module isKindOfClass:[TestModule class]]);

}

@end
