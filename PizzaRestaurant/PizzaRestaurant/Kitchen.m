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
    if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
        if([self.delegate kitchenShouldUpgradeOrder:self]){
            PizzaSizeEnum large = [@"large" pizzaSizeEnumFromString];
            NSLog(@"should be large!");
            return [[Pizza alloc] initWith:&large toppings:toppings];
        } else{
            NSLog(@"normal pizza");
            return [[Pizza alloc] initWith:&size toppings:toppings];
        }
    } else{
        NSLog(@"Refused to make the pizza");
        return nil;
    }
}
- (Pizza *)makePizzaWithName:(NSString*)pizzaName{
    if([pizzaName isEqualToString:@"largePepperoni"]){
        return [[self class] largePepperoni];
    } else{
        return [[self class] meatLovers];
    }
}

- (BOOL) kitchenShouldUpgradeOrder:(id)kitchen{
    return NO;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSizeEnum)size andToppings:(NSArray *)toppings{
    return YES;
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
