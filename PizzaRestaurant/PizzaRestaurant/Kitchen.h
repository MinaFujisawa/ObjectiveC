//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "KitchenDelegate.h"

@interface Kitchen : NSObject<KitchenDelegate>
@property (nonatomic, weak) id delegate;
- (Pizza *)makePizzaWithSize:(PizzaSizeEnum)size toppings:(NSArray *)toppings;
- (Pizza *)makePizzaWithName:(NSString*)pizzaName;

@end


