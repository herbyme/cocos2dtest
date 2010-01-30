//
//  cocos2dtestAppDelegate.m
//  cocos2dtest
//
//  Created by Herbert Yeung on 30/01/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "cocos2dtestAppDelegate.h"

@implementation cocos2dtestAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)app { 
	UIWindow *window = [[UIWindow alloc] initWithFrame:
	[[UIScreen mainScreen] bounds]]; 
	[window setUserInteractionEnabled:YES]; 
	[window setMultipleTouchEnabled:YES]; 
	[[Director sharedDirector] setLandscape: YES];
	[[Director sharedDirector] attachInWindow:window]; 
	
	[window makeKeyAndVisible]; 
	
	MenuScene * ms = [MenuScene node]; 
	[[Director sharedDirector] runWithScene:ms];

}

@end
