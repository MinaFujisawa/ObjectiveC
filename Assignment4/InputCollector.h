//
//  InputCollector.h
//  Assignment4
//
//  Created by MINA FUJISAWA on 2017/08/22.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (strong, nonatomic) NSMutableArray *historyList;

-(NSString *)inputForPrompt:(NSString *)promptString;
-(void) addHistoryList:(NSString *)input;
-(void) showHistory;

@end
