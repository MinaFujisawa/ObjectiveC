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
#import "Manager.h"
#import "Manager2.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *manager1 = [Manager new];
        Manager2 *manager2 = [Manager2 new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            NSLog(@"Please pick your pizza size and toppings:");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Input was %@", inputString);
            
            NSLog(@"Select manager: 1-hateAnchovie 2-cheesy 3-none");
            
            int selectManager;
            scanf("%d",&selectManager);
            //flush
            int c;
            while ((c = getchar()) != '\n' && c != EOF);
            
            if(selectManager == 1){
                restaurantKitchen.delegate = manager1;
            } else if(selectManager == 2){
                restaurantKitchen.delegate = manager2;
            } else{
                restaurantKitchen.delegate = restaurantKitchen;
            }
            
            
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

