//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;

@protocol KitchenDelegate <NSObject>
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSizeEnum)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end
