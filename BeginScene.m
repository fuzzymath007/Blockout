//
//  BeginScene.m
//  blockout
//
//  Created by Matthew Chess on 7/6/14.
//  Copyright (c) 2014 matthewchess. All rights reserved.
//

#import "BeginScene.h"
#import "MyScene.h"

@implementation BeginScene

-(id)initWithSize:(CGSize)size{
    if (self = [super initWithSize:size]){
        
        
        SKLabelNode *title = [SKLabelNode labelNodeWithFontNamed:@"Futura Medium"];
        title.text = @"BlockOut";
        title.fontColor = [SKColor blackColor];
        title.fontSize = 35;
        //center title text
        title.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
        [self addChild:title];
        
    }
    return self;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    MyScene *myScene = [MyScene sceneWithSize:self.frame.size];
    SKTransition *transition = [SKTransition fadeWithDuration:1.0];
    [self.view presentScene:myScene transition:transition];
    
}

@end
