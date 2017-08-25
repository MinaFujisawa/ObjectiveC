//
//  AdditionQuestion.m
//  assignment3
//
//  Created by MINA FUJISAWA on 2017/08/21.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Question.h"

@implementation Question

//override inonatomic, nit
- (instancetype)init {
    if (self = [super init]) {
        _leftValue = arc4random_uniform(100) + 10;
        _rightValue = arc4random_uniform(100) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

- (void) generateQuestion {
    
}

@end
