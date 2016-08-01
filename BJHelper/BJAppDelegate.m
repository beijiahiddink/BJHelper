//
//  BJAppDelegate.m
//  BJHelper
//
//  Created by 王旭 on 16/7/27.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//

#import "BJAppDelegate.h"
#import "BJHelperSupport.h"
#import "BJServerConfig.h"

@interface BJAppDelegate () {
    __unsafe_unretained BJHelperSupport *_helper;
}

@end

@implementation BJAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [NSThread sleepForTimeInterval:1];
    
    _helper = [BJHelperSupport defaultHelper];
    _helper.serverConfig = [BJServerConfig new];
    [_helper startServer];
    
    UIViewController *rootViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.backgroundColor = [UIColor whiteColor];
    _window.rootViewController = rootViewController;
    [_window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

    __block UIBackgroundTaskIdentifier backgroundTask; 
    
    void (^ endBackgroundTask)() = ^() {
        [_helper stopServer];
        [application endBackgroundTask:backgroundTask];
        backgroundTask = UIBackgroundTaskInvalid;
    };
    
    backgroundTask = [application beginBackgroundTaskWithExpirationHandler:^{
        endBackgroundTask();
    }];
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [_helper startServer];
}

@end
