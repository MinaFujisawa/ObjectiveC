//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by MINA FUJISAWA on 2017/09/03.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject
@property (nonatomic) NSMutableArray *players;
@property (nonatomic)NSInteger currentIndex;
- (void)createPlayers : (NSInteger) num;
- (void) roll;
- (void) output;
@end
