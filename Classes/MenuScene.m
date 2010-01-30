//
//  MenuScene.m
//  cocos2dtest
//
//  Created by Herbert Yeung on 30/01/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MenuScene.h"


@implementation MenuScene
- (id) init {
	self = [super init]; 
	if (self != nil) {
		Sprite * bg = [Sprite spriteWithFile:@"menu.png"]; 
		[bg setPosition:ccp(240, 160)]; 
		[self addChild:bg z:0]; 
		[self addChild:[MenuLayer node] z:1];
	} return self;
}
@end

@implementation MenuLayer 
	- (id) init {
	self = [super init]; 
	if (self != nil) {
		[MenuItemFont setFontSize:20]; 
		[MenuItemFont setFontName:@"Helvetica"]; 
		MenuItem *start = [MenuItemFont itemFromString:@"Start Game"
							target:self 
							selector:@selector(startGame:)];
		MenuItem *help = [MenuItemFont itemFromString:@"Help" 
							target:self
							selector:@selector(help:)]; 
		Menu *menu = [Menu menuWithItems:start, help, nil];
		[menu alignItemsVertically]; 
		[self addChild:menu];
	} return self;
} 

-(void)startGame: (id)sender {
	NSLog(@"start game");
} 

-(void)help: (id)sender {
	NSLog(@"help");
}

@end
