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
    if(![[_diceArr objectAtIndex:i-1] isHeld]){
        [_heldDiceArr removeObject:[_diceArr objectAtIndex:i-1]];
    } else{
        [_heldDiceArr addObject:[_diceArr objectAtIndex:i-1]];
    }
}
@end
