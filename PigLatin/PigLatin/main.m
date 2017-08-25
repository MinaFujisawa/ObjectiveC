//
//  main.m
//  PigLatin
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigaLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"%@", [@"pig" stringByPigLatinization]);
        NSLog(@"%@", [@"moist" stringByPigLatinization]);
        NSLog(@"%@", [@"eat" stringByPigLatinization]);
        NSLog(@"%@", [@"cheers" stringByPigLatinization]);
        NSLog(@"%@", [@"smile" stringByPigLatinization]);
    }
    return 0;
}
