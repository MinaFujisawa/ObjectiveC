//
//  ScoreKeeper.h
//  assignment3
//
//  Created by MINA FUJISAWA on 2017/08/21.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property NSInteger countRight;
@property NSInteger countWrong;
- (NSString*) getScoreString;

@end
