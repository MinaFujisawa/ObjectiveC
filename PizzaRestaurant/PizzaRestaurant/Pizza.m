//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by MINA FUJISAWA on 2017/08/27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)initWith:(PizzaSizeEnum*)size toppings:(NSArray*)toppings
{
    self = [super init];
    if (self) {
        self.pizzaSize = size;
        self.toppings = [NSMutableArray array];
        self.toppings = toppings;
    }
    return self;
}


-(NSString*) getPizzaSize
{
    return [self pizzaSizeEnumToString:*(self.pizzaSize)];
}
-(NSArray*) getToppings{
    return _toppings;
}

-(NSString*) pizzaSizeEnumToString:(PizzaSizeEnum)enumVal
{
    NSArray *pizaSizeTypeArray = [[NSArray alloc] initWithObjects:pizzaSizeTextList];
    return [pizaSizeTypeArray objectAtIndex:enumVal];
}

-(PizzaSizeEnum) pizzaSizeEnumStringToEnum:(NSString*)strVal
{
    NSArray *imageTypeArray = [[NSArray alloc] initWithObjects:pizzaSizeTextList];
    NSUInteger n = [imageTypeArray indexOfObject:strVal];
//    if(n < 1) n = JPG;
    return (PizzaSizeEnum) n;
}

@end

@implementation NSString (EnumParser)

- (PizzaSizeEnum)pizzaSizeEnumFromString{
    NSDictionary<NSString*,NSNumber*> *sizes = @{
                                                 @"small": @(small),
                                                 @"medium": @(medium),
                                                 @"laege": @(large),
                                                 };
    return sizes[self].integerValue;
}

@end



