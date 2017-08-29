//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSizeEnum)size toppings:(NSArray *)toppings{
    return [[Pizza alloc] initWith:&size toppings:toppings];
}
- (Pizza *)makePizzaWithName:(NSString*)pizzaName{
    if([pizzaName isEqualToString:@"largePepperoni"]){
        return [[self class] largePepperoni];
    } else{
        return [[self class] meatLovers];
    }
}

+(Pizza *)largePepperoni{
    PizzaSizeEnum size = (PizzaSizeEnum)[@"large" pizzaSizeEnumFromString];
    NSArray *toppings = @[@"salami", @"cheese"];
    return [[Pizza alloc] initWith:&size toppings:toppings];
}

+(Pizza *)meatLovers{
    PizzaSizeEnum size = (PizzaSizeEnum)[@"medium" pizzaSizeEnumFromString];
    NSArray *toppings = @[@"salami", @"ham"];
    return [[Pizza alloc] initWith:&size toppings:toppings];
}

@end
