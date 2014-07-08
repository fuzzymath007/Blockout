//
//  EndScene.m
//  blockout
//
//  Created by Matthew Chess on 6/11/14.
//  Copyright (c) 2014 matthewchess. All rights reserved.
//

#import "EndScene.h"
#import "MyScene.h"

@implementation EndScene

-(instancetype) initWithSize:(CGSize)size{
    if(self = [super initWithSize:size]){
        
        self.backgroundColor = [SKColor blackColor];
        
        SKAction *gameOver = [SKAction playSoundFileNamed:@"gameover.caf" waitForCompletion:NO];
        [self runAction:gameOver];
        
        SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Futura Medium"];
        label.text = @"YOU LOSE!";
        label.fontColor = [SKColor whiteColor];
        label.fontSize = 35;
        label.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
        [self addChild:label];
        
        //seccond lable
        
        SKLabelNode *tryAgain = [SKLabelNode labelNodeWithFontNamed:@"Futura Medium"];
        tryAgain.text = @"tap to play again";
        tryAgain.fontColor = [SKColor whiteColor];
        tryAgain.fontSize = 24;
        tryAgain.position = CGPointMake(size.width/2, -50);
        
        
        SKAction *moveLabel = [SKAction moveToY:(size.height/2 -40) duration:2];
        
        [tryAgain runAction:moveLabel];
        [self addChild:tryAgain];
        
        
    }
    
    return self;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    MyScene *firstScene = [MyScene sceneWithSize:self.size];
    
    [self.view presentScene:firstScene transition:[SKTransition doorsOpenVerticalWithDuration:0.5]];

}

@end
