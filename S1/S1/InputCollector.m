//
//  InputCollector.m
//  S1
//
//  Created by MINA FUJISAWA on 2017/08/24.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector
-(NSString *)inputForPrompt {
    char inputChars[256];
    fgets(inputChars, 256, stdin);
    NSString *input = [NSString stringWithCString:
                       inputChars encoding:NSUTF8StringEncoding];
    input = [input substringToIndex:[input length] -1];
    return input;
}
@end
