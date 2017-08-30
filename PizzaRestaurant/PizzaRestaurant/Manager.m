//
//  Manager.m
//  PizzaRestaurant
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "DeliveryService.h"


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

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    if(pizza != nil){
        static DeliveryService *ds = nil;
        if(ds == nil){
            ds = [DeliveryService new];
        }
        NSLog(@"Kitchen did make pizza");
        
        //Add delivered list
        [ds addDeliveredList];
        
        //display delivered list
        NSLog(@"Delivered list:");
        for (NSString* desc in ds.getDeliveredList) {
            NSLog(@"%@", desc);
        }
        
        [ds deliverPizza:pizza];
    }
}
@end
