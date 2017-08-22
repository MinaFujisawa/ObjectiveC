//
//  InputCollector.m
//  Assignment4
//
//  Created by MINA FUJISAWA on 2017/08/22.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    char inputChars[256];
    fgets(inputChars, 256, stdin);
    NSString *input = [[NSString stringWithCString:
                        inputChars encoding:NSUTF8StringEncoding]stringByTrimmingCharactersInSet:
                       [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

@end
