//
//  Player.h
//  SnakesAndLadders
//
//  Created by MINA FUJISAWA on 2017/08/31.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger currentSquare;
@property  (nonatomic) NSDictionary* gameLogic;
@property BOOL gameOver;
- (void) roll;
- (void) output : (NSString*) name;
@end
