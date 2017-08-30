//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by MINA FUJISAWA on 2017/08/30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"
@class Pizza;

@interface DeliveryService(){
    DeliveryCar *car;
    NSMutableArray *deliveredList;
}
@end

@implementation DeliveryService
- (instancetype)init
{
    self = [super init];
    if (self) {
        car = [DeliveryCar new];
        deliveredList = [NSMutableArray array];
    }
    return self;
}

- deliverPizza:(Pizza *)pizza {
    NSLog(@"Redy to delivery");
    [car deliverPizza:pizza];
    return 0;
}

- (void) addDeliveredList {
    NSDate *date = [NSDate date];
    NSString *pizzaDesc = [NSString stringWithFormat:@"made at %@", date];
    [deliveredList addObject:pizzaDesc];
}

- (NSMutableArray*) getDeliveredList {
    return deliveredList;
}
@end
