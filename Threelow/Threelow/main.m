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
        NSCharacterSet* notDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
        
        NSLog(@"input roll (%ld times left)", gc.MAX_ROLL_TIMES - gc.rollCount);
        
        while([gc.heldDiceArr count] < 5){
            NSString *input = [InputHandler getString];
            if([input isEqualToString:@"roll"]){
                
                //reset diceArr
                [gc.diceArr removeAllObjects];
                
                //roll dice
                for(int i = 0; i < gc.MAX_ROLL_TIMES
                    - gc.heldDiceArr.count; i++){
                    [gc.diceArr addObject:[Dice new]];
                }
                [gc printStatus];
                
                //hold dice once
                [gc printAvarableDiceIndex];
                NSString *input = [InputHandler getString];
                if(0 < [input intValue] && [input intValue] < gc.diceArr.count+1){
                    [gc holdDie:[input intValue]];
                    [[gc diceArr] removeObjectAtIndex:[input intValue]-1];
                    [gc printStatus];
                    [gc printScore];
                    
                    //Don't print status when game is finished
                    if(gc.heldDiceArr.count != gc.MAX_ROLL_TIMES){
                        [gc printAvarableDiceIndex:[NSString stringWithFormat:@"OR input roll (%ld times left)",
                                                    gc.MAX_ROLL_TIMES - gc.rollCount]];
                    }
                } else{
                    [gc printAvarableDiceIndex];                }
            
                //hold dice after rolled at least once
            } else if ([input rangeOfCharacterFromSet:notDigits].location == NSNotFound){
                if(0 < [input intValue] && [input intValue] < gc.diceArr.count+1){
                    [gc holdDie:[input intValue]];
                    [[gc diceArr] removeObjectAtIndex:[input intValue]-1];
                    [gc printStatus];
                    [gc printScore];
                    
                    //Don't print status when game is finished
                    if(gc.heldDiceArr.count != gc.MAX_ROLL_TIMES){
                        [gc printAvarableDiceIndex:[NSString stringWithFormat:@"OR input roll (%ld times left)",
                                                    gc.MAX_ROLL_TIMES - gc.rollCount]];
                    }
                } else{
                    [gc printAvarableDiceIndex];
                }
            } else if ([input isEqualToString:@"reset"]){
                [gc resetDice];
                [gc printStatus];
                [gc printScore];
            }
        }
    }
    return 0;
}


