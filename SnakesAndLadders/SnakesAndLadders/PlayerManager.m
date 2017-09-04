//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by MINA FUJISAWA on 2017/09/03.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"
NSInteger num = 0;

@implementation PlayerManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray array];
        _currentIndex = 0;
    }
    return self;
}

- (void)createPlayers : (NSInteger) num_{
    num = num_;
    for(int i = 0; i < num ; i++){
        Player *player = [Player new];
        [player setName:[NSString stringWithFormat:@"player%d",i+1]];
        [self.players addObject:player];
    }
}

- (Player*) currentPlayer{
    return [self.players objectAtIndex:self.currentIndex];
}

- (void) roll{
    Player *currentPlayer = [self currentPlayer];
    [currentPlayer roll];
}

- (void) output{
    Player *currentPlayer = [self currentPlayer];
    [currentPlayer output:currentPlayer.name];
    self.currentIndex += 1;
    
    //reset currentIndex
    if(self.currentIndex > num-1){
        self.currentIndex = 0;
    }
}
@end
