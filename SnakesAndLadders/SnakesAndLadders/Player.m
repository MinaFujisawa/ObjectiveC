//
//  Player.m
//  SnakesAndLadders
//
//  Created by MINA FUJISAWA on 2017/08/31.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Player.h"

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
    NSInteger ran = arc4random_uniform(6)+1;
    self.currentSquare += ran;
    
    if([self.gameLogic objectForKey:[NSNumber numberWithInteger:self.currentSquare]]){
        NSNumber *key = [NSNumber numberWithInteger:self.currentSquare];
        keyInt = [key integerValue];
        NSNumber *square = [self.gameLogic objectForKey:key];
        self.currentSquare = [square integerValue];
    }
    if(self.currentSquare > 100){
        self.gameOver = YES;
    }
    [self output:ran forKey:keyInt];
}

- (void) output: (NSInteger) dice forKey : (NSInteger) key {
    if(self.gameOver){
        NSLog(@"Finished!");
    } else {
        NSLog(@"You rolled a %ld", dice);
        
        //Special point
        if(key > 0){
            if(key < self.currentSquare){
                NSLog(@"Bonus! You jusmped from %ld to %ld", key, self.currentSquare);
            } else{
                NSLog(@"Bummer! You moved back to %ld from %ld", self.currentSquare, key);
            }
        //Normal
        } else{
            NSLog(@"You landed on %ld", self.currentSquare);
        }
    }
}
@end
