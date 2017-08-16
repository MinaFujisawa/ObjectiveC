//
//  main.m
//  assignment1
//
//  Created by MINA FUJISAWA on 2017/08/16.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // 255 unit long array of characters
    char inputChars[255];
    
    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin);
    
    // print as a c string
    printf("Your string is %s\n", inputChars);
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    // remove last \n
    inputString = [inputString substringToIndex:[inputString length] - 1];
    
    NSString *upper = [inputString uppercaseString];
    NSString *lower = [inputString lowercaseString];
    int num = inputString.intValue;
    NSString *canada = [inputString stringByAppendingString:@", eh?"];
    NSString *replace = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    NSInteger length = inputString.length;

    
    
    // print NSString object
    NSLog(@"Input was: %@", inputString);
    NSLog(@"1. uppercase: %@", upper);
    NSLog(@"2. lowercase: %@", lower);
    NSLog(@"3. numberize: %d", num);
    NSLog(@"4. canadianize: %@", canada);
    
    if([inputString hasSuffix:@"?"]){
        NSLog(@"5. respond: %@", @"I don't know");
    } else if ([inputString hasSuffix:@"!"]){
        NSLog(@"5. respond: %@", @"Whoa, calm down!");
    }
    
    NSLog(@"6. De-Space-It: %@", replace);
    NSLog(@"word count: %d", length);
    
    return 0;
}
