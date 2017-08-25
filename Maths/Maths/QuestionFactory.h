//
//  QuestionFactory.h
//  Maths
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject
@property NSArray *questionSubclassNames;
- (Question*) generateRandomQuestion;
@end
