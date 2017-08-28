//
//  Casher.m
//  Foodtruck
//
//  Created by MINA FUJISAWA on 2017/08/28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Casher.h"

@implementation Casher
-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    if([food isEqualToString:@"shortbread"]){
        return 100;
    } else{
        return 50;
    }
}
@end
