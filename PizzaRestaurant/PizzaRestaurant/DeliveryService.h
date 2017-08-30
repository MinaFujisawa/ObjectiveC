//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by MINA FUJISAWA on 2017/08/30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pizza;

@interface DeliveryService : NSObject
- deliverPizza:(Pizza *)pizza;
- (NSMutableArray*) getDeliveredList;
- (void) addDeliveredList;
@end
