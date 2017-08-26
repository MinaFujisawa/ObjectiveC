//
//  GameController.m
//  Threelow
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _diceArr = [NSMutableArray array];
        _heldDiceArr = [NSMutableArray array];
    }
    return self;
}

- (void) holdDie:(NSInteger)i {
    if([[_diceArr objectAtIndex:i-1] isHeld]){
        [_heldDiceArr removeObject:[_diceArr objectAtIndex:i-1]];
    } else{
        [_heldDiceArr addObject:[_diceArr objectAtIndex:i-1]];
        [[_diceArr objectAtIndex:i-1] setIsHeld:YES];
    }
}

-(void) resetDice {
    [_heldDiceArr removeAllObjects];
    for(int i = 0; i < _diceArr.count; i++){
        [[_diceArr objectAtIndex:i] setIsHeld:NO];
    }
}

-(void) printRolled {
    printf("%s", [@"[rolled] " UTF8String]);
    for(int i = 0; i < _diceArr.count; i++){
        printf("%d:",i+1);
        printf("%s ", [[[_diceArr objectAtIndex:i] currentValueSymbol] UTF8String]);
    }
    printf("\n");
}

-(void) printHeld {
    printf("%s", [@"[held] " UTF8String]);
    for(int i = 0; i < _heldDiceArr.count; i++){
        printf("%s ", [[[_heldDiceArr objectAtIndex:i] currentValueSymbol] UTF8String]);
    }
    printf("\n");
}

-(void) printAvarableDiceIndex {
    if (_diceArr.count == 1) {
        NSLog(@"Input dice index 1 to hold the dice");
    } else{
        NSLog(@"Input dice index range of 1 to %ld to hold the dice", _diceArr.count);
    }
}

-(void) printAvarableDiceIndex:(NSString*) string {
    if (_diceArr.count == 1) {
        NSLog(@"Input dice index 1 to hold the dice %@", string);
    } else{
        NSLog(@"Input dice index range of 1 to %ld to hold the dice %@", _diceArr.count, string);
    }
}

-(void) printScore {
    
}
@end
