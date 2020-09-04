//
//  AppDelegate.m
//  LifeCycleInfoApp
//
//  Created by Kirill Khudiakov on 04.09.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (instancetype)init
{
    self = [super init];
    if (self) {
        printf("0️⃣ Первый метод жизненого цикла AppDelegate\n");
    }
    return self;
}

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
    printf("1️⃣ метод жизненого цикла AppDelegate\n");
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    printf("2️⃣ метод жизненого цикла AppDelegate\n");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    printf(" метод жизненого цикла AppDelegate\n ");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    printf("3️⃣ метод жизненого цикла AppDelegate\n ");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    printf(" метод жизненого цикла AppDelegate\n ");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    printf(" метод жизненого цикла AppDelegate\n ");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    printf(" метод жизненого цикла AppDelegate\n ");
}



#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
