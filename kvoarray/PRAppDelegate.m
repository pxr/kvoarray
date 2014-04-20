//
//  PRAppDelegate.m
//  kvoarray
//
//  Created by Paul Robinson on 2014-04-16.
//  Copyright (c) 2014 Elastic Rat. All rights reserved.
//

#import "PRAppDelegate.h"
#import "KVOArrayHolder.h"

@interface PRAppDelegate ()
@property (nonatomic) KVOArrayHolder *holder;
@end

@implementation PRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    [self testKVO];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)testKVO {
    self.holder = [[KVOArrayHolder alloc] init];
    [self.holder addObserver:self forKeyPath:@"array" options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld  context:nil];

    [self.holder addDataObject:@"one"];
    [self.holder addDataObject:@"two"];
    [self.holder addDataObject:@"three"];
    [self.holder removeDataObjectAtIndex:1];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    NSLog(@"@observeValueForKeyPath: %@ change:%@", keyPath, change);
}
@end
