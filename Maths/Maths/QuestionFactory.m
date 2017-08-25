//
//  QuestionFactory.m
//  Maths
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"

@implementation QuestionFactory


- (instancetype)init {
    if(self = [super init]){
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicatioQuestion"];
    }
    return self;
}
- (Question*) generateRandomQuestion{
    NSInteger ran = arc4random_uniform(3);
    return [NSClassFromString([_questionSubclassNames objectAtIndex:ran]) new];
}
@end
