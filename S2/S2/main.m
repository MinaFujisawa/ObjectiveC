//
//  main.m
//  S2
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
        
        //input associate codes
        NSMutableDictionary *codes = [NSMutableDictionary dictionary];
        for(int i = 0; i < n; i++){
            char inputChars[256];
            fgets(inputChars, 256, stdin);
            NSString *inputLine = [NSString stringWithCString:
                                   inputChars encoding:NSUTF8StringEncoding];
            inputLine = [inputLine substringToIndex:[inputLine length] -1];
            
            codes[[[inputLine componentsSeparatedByString:@" "] objectAtIndex:1]] = [[inputLine componentsSeparatedByString:@" "] objectAtIndex:0];
        }
        
        for (NSString *key in codes) {
            NSString *value = codes[key];
            NSLog(@"%@ = %@", key, value);
        }
        
        //input decoded
        char inputChars[256];
        fgets(inputChars, 256, stdin);
        NSString *decoded = [NSString stringWithCString:
                               inputChars encoding:NSUTF8StringEncoding];
        decoded = [decoded substringToIndex:[decoded length] -1];
        NSLog(@"%@", decoded);
        
        //encoding
        NSString *result = @"";
        int point = 0;
        int size = 2;
        
        while(point+size <= [decoded length]){
            NSString *key = [decoded substringWithRange:NSMakeRange(point, size)];
            if ([codes objectForKey: key]) {
                result = [result stringByAppendingString:codes[key]];
                point += size;
                size = 2;
            } else {
                size++;
            }
        }
        
        NSLog(@"result : %@", result);
        
    }
    return 0;
    
}
