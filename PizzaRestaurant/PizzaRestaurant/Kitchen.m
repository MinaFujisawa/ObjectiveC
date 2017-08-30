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
    Pizza *pizza = nil;
    if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
        if([self.delegate kitchenShouldUpgradeOrder:self]){
            PizzaSizeEnum large = [@"large" pizzaSizeEnumFromString];
            NSLog(@"should be large!");
            pizza = [[Pizza alloc] initWith:&large toppings:toppings];
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
        } else{
            NSLog(@"normal pizza");
            pizza = [[Pizza alloc] initWith:&size toppings:toppings];
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
        }
    } else{
        NSLog(@"Refused to make the pizza");
    }
    return pizza;
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

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    if(pizza != nil){
        NSLog(@"Kitchen did make pizza");
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
