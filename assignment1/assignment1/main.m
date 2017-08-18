//
//  main.m
//  assignment1
//
//  Created by MINA FUJISAWA on 2017/08/16.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

void stringManipulation() {
    int inputNum;
    // 255 unit long array of characters
    char inputChars[255];
    
    printf("Input a number: ");
    scanf("%d", &inputNum);
    
    //flush
    int c;
    while ((c = getchar()) != '\n' && c != EOF);
    
    printf("Input a text: ");
    fgets(inputChars, 255, stdin);
    
    
    // print as a c string
    printf("Your string is %s\n", inputChars);
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    // remove last \n
    inputString = [inputString substringToIndex:[inputString length] - 1];
    
    NSString *output;
    
    switch(inputNum){
        case 1:
            output = [inputString uppercaseString];
        case 2:
            output = [inputString lowercaseString];
        case 3:
            output = [NSString stringWithFormat:@"%d",inputString.intValue];
        case 4:
            output = [inputString stringByAppendingString:@", eh?"];
        case 5:
            if([inputString hasSuffix:@"?"]){
                output = @"I don't know";
            } else if ([inputString hasSuffix:@"!"]){
                output = @"Whoa, calm down!";
            }
        case 6:
            inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    }
    
    // print NSString object
    NSLog(@"operation num: %d", inputNum);
    NSLog(@"Input was: %@", inputString);
    
    NSLog(@"Result: %@", output);
    NSLog(@"Input address: %p", inputString);
    NSLog(@"Result address: %p", output);
}



int main(int argc, const char * argv[]) {
    int i = 0;
    while(i == 0) {
        stringManipulation();
    }
    
    return 0;
}

