//
//  Manager2.m
//  PizzaRestaurant
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager2.h"


@implementation Manager2
- (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSizeEnum)size andToppings:(NSArray *)toppings{
    return YES;
}

- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    NSLog(@"Here you go!!");
    return YES;
}

@end
