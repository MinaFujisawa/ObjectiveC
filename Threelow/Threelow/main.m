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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(1){
            NSString *input = [InputHandler getString];
            if([input isEqualToString:@"roll"]){
                Dice *dice1 = [Dice new];
                Dice *dice2 = [Dice new];
                Dice *dice3 = [Dice new];
                Dice *dice4 = [Dice new];
                Dice *dice5 = [Dice new];
                
                NSLog(@"dice1 : %ld", dice1.currentValue);
                NSLog(@"dice2 : %ld", dice2.currentValue);
                NSLog(@"dice3 : %ld", dice3.currentValue);
                NSLog(@"dice4 : %ld", dice4.currentValue);
                NSLog(@"dice5 : %ld", dice5.currentValue);
            }
        }
    }
    return 0;
}
