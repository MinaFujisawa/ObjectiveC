//
//  AdditionQuestion.m
//  Maths
//
//  Created by MINA FUJISAWA on 2017/08/24.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    super.question = [NSString stringWithFormat: @"%ld + %ld =", super.leftValue, super.rightValue];
    super.answer = super.leftValue + super.rightValue;
}
@end
