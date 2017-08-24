//
//  main.m
//  S1
//
//  Created by MINA FUJISAWA on 2017/08/24.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        scanf("%d", &n);
        
        //flush
        int c;
        while ((c = getchar()) != '\n' && c != EOF);

        NSString *first;
        NSString *second;
        NSInteger firstScore = 0;
        NSInteger secondScore = 0;
        
        for(int i = 0; i < n; i++){
            char inputChars[256];
            fgets(inputChars, 256, stdin);
            NSString *inputLine = [NSString stringWithCString:
                               inputChars encoding:NSUTF8StringEncoding];
            inputLine = [inputLine substringToIndex:[inputLine length] -1];
            
            int r = [[[inputLine componentsSeparatedByString:@" "] objectAtIndex:1] intValue];
            int s = [[[inputLine componentsSeparatedByString:@" "] objectAtIndex:2] intValue];
            int d = [[[inputLine componentsSeparatedByString:@" "] objectAtIndex:3] intValue];
            NSInteger currentScore = 2*r+3*s+d;
            
            if(firstScore < currentScore){
                second = first;
                secondScore = firstScore;
                firstScore = currentScore;
                first = [[inputLine componentsSeparatedByString:@" "] objectAtIndex:0];
            } else if(secondScore < currentScore){
                secondScore = currentScore;
                second = [[inputLine componentsSeparatedByString:@" "] objectAtIndex:0];
            }
        }
        
        NSLog(@"first: %@ %ld", first, firstScore);
        NSLog(@"second: %@ %ld", second, secondScore);
        
    }
    return 0;
}
