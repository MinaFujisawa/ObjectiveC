//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Input was %@", inputString);
            
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandString = [inputString componentsSeparatedByString:@" "];
            if(commandString.count == 1){
                NSString* pizzaName = [commandString objectAtIndex:0];
                [restaurantKitchen makePizzaWithName:pizzaName];
            } else{
                NSString *size = [commandString objectAtIndex:0];
                PizzaSizeEnum sizeEnum = (PizzaSizeEnum)[size pizzaSizeEnumFromString];
                inputString = [inputString substringFromIndex:size.length+1];
                NSArray* toppingsArray = [inputString componentsSeparatedByString:@" "];
                [restaurantKitchen makePizzaWithSize:sizeEnum toppings:toppingsArray];
            }
        }

    }
    return 0;
}

