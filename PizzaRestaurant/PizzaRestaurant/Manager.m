//
//  Manager.m
//  PizzaRestaurant
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager
- (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSizeEnum)size andToppings:(NSArray *)toppings{
    BOOL hasNoAnchovie = YES;
    for (NSString* topping in toppings) {
        if([topping isEqualToString:@"anchovie"]){
            hasNoAnchovie =  NO;
            break;
        } else{
            hasNoAnchovie = YES;
        }
    }
    return hasNoAnchovie;
}

- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}
@end
