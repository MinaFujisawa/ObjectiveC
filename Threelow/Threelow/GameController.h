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
- (void) holdDie:(NSInteger)i;
-(void) resetDice;
-(void) printRolled;
-(void) printHeld;
-(void) printAvarableDiceIndex;
-(void) printAvarableDiceIndex:(NSString*) string;
@end
