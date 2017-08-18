//
//  Person.m
//  practice_170817
//
//  Created by MINA FUJISAWA on 2017/08/17.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Person.h"

@implementation Person {
    // define private instance variables
    NSString *last;
}

// initializer (constructor)
- (instancetype)initWith:(NSString *) first andWithLastName: (NSString *) last
{
    self = [super init];
    if (self) {
        self.first = first;
        self->last = @"Hello";
    }
    return self;
}


// implementation of methods
- (void) printMyName {
    NSLog(@"This is my name");
}

@end
