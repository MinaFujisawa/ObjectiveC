//
//  main.m
//  practice_170817
//
//  Created by MINA FUJISAWA on 2017/08/17.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *today = [[NSDate alloc] init];
        NSLog(@"today is %@", today);
        
        NSDate *tomorrow = nil;
        
        tomorrow = today;
        tomorrow = nil;
        
        NSLog(@"Today is %p", today);
        NSLog(@"Tomorrow is %p", tomorrow);
        
        Person *p1 = [[Person alloc] initWith: @"Mina" andWithLastName:@"Fujisawa"];
        [p1 printMyName];
        
        
    }

    
    return 0;
}


