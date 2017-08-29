//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by MINA FUJISAWA on 2017/08/27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject
typedef NS_ENUM(NSInteger, PizzaSizeEnum) {
    small,
    medium,
    large
};
#define pizzaSizeTextList @"small", @"medium", @"large", nil

@property (nonatomic, strong) NSArray* toppings;
@property (nonatomic) PizzaSizeEnum* pizzaSize;
- (instancetype)initWith:(PizzaSizeEnum*)size toppings:(NSArray*)toppings;
-(NSString*) getPizzaSize;
-(NSArray*) getToppings
@end


@interface NSString (EnumParser)
- (PizzaSizeEnum)pizzaSizeEnumFromString;
@end
