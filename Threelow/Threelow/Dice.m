//
//  Dice.m
//  Threelow
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Dice.h"

@implementation Dice

NSMutableArray* diceSymbols;

- (instancetype)init{
    if(self = [super init]){
        _isHeld = NO;
        diceSymbols = [[NSMutableArray alloc] initWithArray:@[@"⚀", @"⚁", @"⚂",@"⚃",@"⚄",@"⚅"]];
        [self throwDice];
    }
    return self;
}

- (void) throwDice{
    _currentValue = arc4random_uniform(6)+1;
    _currentValueSymbol = [diceSymbols objectAtIndex:_currentValue-1];
}
@end
