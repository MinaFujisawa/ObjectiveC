//
//  main.m
//  Threelow
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gc = [GameController new];
        Dice *dice1 = [Dice new];
        Dice *dice2 = [Dice new];
        Dice *dice3 = [Dice new];
        Dice *dice4 = [Dice new];
        Dice *dice5 = [Dice new];
        Dice *dice6 = [Dice new];
        [gc.diceArr addObject:dice1];
        [gc.diceArr addObject:dice2];
        [gc.diceArr addObject:dice3];
        [gc.diceArr addObject:dice4];
        [gc.diceArr addObject:dice5];
        [gc.diceArr addObject:dice6];
        
        NSLog(@"input roll");
        while(1){
            NSString *input = [InputHandler getString];
            if([input isEqualToString:@"roll"]){
                
                NSLog(@"dice1 : %ld", dice1.currentValue);
                NSLog(@"dice2 : %ld", dice2.currentValue);
                NSLog(@"dice3 : %ld", dice3.currentValue);
                NSLog(@"dice4 : %ld", dice4.currentValue);
                NSLog(@"dice5 : %ld", dice5.currentValue);
                NSLog(@"dice6 : %ld", dice6.currentValue);
                
                NSLog(@"input dice indexes to hold");
                
            } else if(1 < [input intValue] && [input intValue] <= 6){
                [gc holdDie:[input intValue]];
            }
            
        }
    }
    return 0;
}
