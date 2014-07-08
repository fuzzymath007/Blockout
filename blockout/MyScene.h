//
//  MyScene.h
//  blockout
//

//  Copyright (c) 2014 matthewchess. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface MyScene : SKScene <SKPhysicsContactDelegate>

@property (assign,nonatomic) int *score;
@property (strong,nonatomic) SKAction *playBrickHit;
@property (strong,nonatomic) SKAction *playBlip;

@end
