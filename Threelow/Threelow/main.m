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
        
        NSLog(@"input roll");
        while([gc.heldDiceArr count] < 5){
            NSString *input = [InputHandler getString];
            if([input isEqualToString:@"roll"]){
                //reset diceArr
                for(int i = 0; i < gc.diceArr.count; i++){
                   [gc.diceArr removeObjectAtIndex:i];
                }
                for(int i = 0; i < 5 - gc.heldDiceArr.count; i++){
                    [gc.diceArr addObject:[Dice new]];
                }
                
                [gc printRolled];
                [gc printHeld];
                
                NSLog(@"Input dice indexe to hold");
                NSString *inputNum = [InputHandler getString];
                //TODO:loop
                if(0 < [inputNum intValue] && [inputNum intValue] <= 5){
                    [gc holdDie:[inputNum intValue]];
                } else{
                    NSLog(@"Please input number 1-5");
                }
            
            } else if ([input isEqualToString:@"reset"]){
                [gc resetDice];
            }
        }
    }
    return 0;
}
