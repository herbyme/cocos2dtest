//
//  MenuScene.h
//  cocos2dtest
//
//  Created by Herbert Yeung on 30/01/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"
@interface MenuScene : Scene {} 
@end

@interface MenuLayer : Layer {} 
-(void)startGame: (id)sender; 
-(void)help: (id)sender; 
@end
