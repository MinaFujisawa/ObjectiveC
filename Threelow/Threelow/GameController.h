//
//  GameController.h
//  Threelow
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject
@property (nonatomic, strong) NSMutableArray *diceArr;
@property (nonatomic, strong) NSMutableArray *heldDiceArr;
@property (nonatomic) const NSInteger MAX_ROLL_TIMES;
@property NSInteger rollCount;
-(void) holdDie:(NSInteger)i;
-(void) resetDice;
-(void) printStatus;
-(void) printScore;
-(void) printAvarableDiceIndex;
-(void) printAvarableDiceIndex:(NSString*) string;
@end
