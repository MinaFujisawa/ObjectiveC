//
//  main.m
//  SnakesAndLadders
//
//  Created by MINA FUJISAWA on 2017/08/31.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PlayerManager *pm = [PlayerManager new];
        
        //set number of players
        NSLog(@"type number of players");
        NSString* numString;
        numString = [InputHandler getString];
        while (![numString intValue]){
            NSLog(@"please type number");
            numString = [InputHandler getString];
        }
        [pm createPlayers:[numString integerValue]];
        
        //game
        NSLog(@"type 'roll' or 'r' ");
        while(1){
            NSString* input = [InputHandler getString];
            if([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]){
                [pm roll];
                [pm output];
            }
        }
    }
    return 0;
}
