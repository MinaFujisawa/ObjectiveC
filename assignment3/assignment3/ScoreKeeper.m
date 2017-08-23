//
//  ScoreKeeper.m
//  assignment3
//
//  Created by MINA FUJISAWA on 2017/08/21.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString*) getScoreString {
    NSInteger percentage = (100 * _countRight) / (_countWrong + _countRight);
    return [NSString stringWithFormat:@"score: %ld right, %ld wrong ---- %ld %%", _countRight, _countWrong, percentage];
}

@end
