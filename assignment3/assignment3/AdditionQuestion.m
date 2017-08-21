//
//  AdditionQuestion.m
//  assignment3
//
//  Created by MINA FUJISAWA on 2017/08/21.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

//override init
- (instancetype)init {
    if (self = [super init]) {
        NSInteger num1 = arc4random_uniform(100) + 10;
        NSInteger num2 = arc4random_uniform(100) + 10;
        _question = [NSString stringWithFormat: @"%ld + %ld =", num1, num2];
        _answer = num1 + num2;
    }
    return self;
}

@end
