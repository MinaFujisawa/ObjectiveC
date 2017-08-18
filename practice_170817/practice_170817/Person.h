//
//  Person.h
//  practice_170817
//
//  Created by MINA FUJISAWA on 2017/08/17.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
// public properties
@property NSString *first;
// public methods
- (instancetype)initWith:(NSString *) first andWithLastName: (NSString *) last;
- (void) printMyName;

@end
