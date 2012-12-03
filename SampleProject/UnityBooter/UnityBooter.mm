//
//  UnityBooter.m
//  SampleProject
//
//  Created by Toru Inoue on 2012/12/04.
//  Copyright (c) 2012年 Toru Inoue. All rights reserved.
//

#import "UnityBooter.h"

#import "AppController.h"
#import "RegisterClasses.h"
#import "RegisterMonoModules.h"

static const int constsection = 0;
bool UnityParseCommandLine(int argc, char *argv[]);


@implementation UnityBooter
- (id) initWithUnity:(UIApplication * )application withLaunchOptions:(NSDictionary * )launchOptions {
    if (self = [super init]) {
        RegisterMonoModules();
        
        AppController * unityApp = [[AppController alloc]init];
        [unityApp application:application didFinishLaunchingWithOptions:launchOptions];
    }
    return self;
}
@end
