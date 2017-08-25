//
//  AdditionQuestion.h
//  assignment3
//
//  Created by MINA FUJISAWA on 2017/08/21.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
@property  (nonatomic) NSInteger rightValue;
@property  (nonatomic) NSInteger leftValue;
@property  (nonatomic) NSString* question;
@property  (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate* startTime;
@property (nonatomic, strong) NSDate* endTime;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;

@end
