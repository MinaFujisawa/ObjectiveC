//
//  Player.m
//  SnakesAndLadders
//
//  Created by MINA FUJISAWA on 2017/08/31.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Player.h"
NSInteger dice = 0;
NSInteger keyInt = 0;


@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = @{@4:@14, @17:@7, @9:@31, @20:@38, @89:@26, @28:@84, @40:@89, @64:@60,@63:@81,@51:@67, @95:@75, @99:@78};
        _gameOver = NO;
    }
    return self;
}
- (void) roll{
    NSInteger keyInt = 0;
    dice = arc4random_uniform(6)+1;
    self.currentSquare += dice;
    
    if([self.gameLogic objectForKey:[NSNumber numberWithInteger:self.currentSquare]]){
        NSNumber *key = [NSNumber numberWithInteger:self.currentSquare];
        keyInt = [key integerValue];
        NSNumber *square = [self.gameLogic objectForKey:key];
        self.currentSquare = [square integerValue];
    }
    if(self.currentSquare > 100){
        self.gameOver = YES;
    }
}

- (void) output : (NSString*) name{
    if(self.gameOver){
        NSLog(@"Finished!");
    } else {
        NSLog(@"%@ rolled a %ld", name, dice);
        
        //Special point
        if(keyInt > 0){
            if(keyInt < self.currentSquare){
                NSLog(@"Bonus! %@ jusmped from %ld to %ld", name, keyInt, self.currentSquare);
            } else{
                NSLog(@"Bummer! %@ moved back to %ld from %ld", name, self.currentSquare, keyInt);
            }
            //Normal
        } else{
            NSLog(@"%@ landed on %ld", name, self.currentSquare);
        }
    }
}
@end
