//
//  main.m
//  SnakesAndLadders
//
//  Created by MINA FUJISAWA on 2017/08/31.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *player = [Player new];
        
        NSLog(@"type 'roll' or 'r' ");
        while(1){
            NSString* input = [InputHandler getString];
            if([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]){
                [player roll];
            }
        }
    }
    return 0;
}
