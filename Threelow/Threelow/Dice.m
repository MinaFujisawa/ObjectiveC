//
//  Dice.m
//  Threelow
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Dice.h"

@implementation Dice
- (instancetype)init{
    if(self = [super init]){
        [self throwDice];
    }
    return self;
}

- (void) throwDice{
    self.currentValue = arc4random_uniform(6)+1;
}
@end
