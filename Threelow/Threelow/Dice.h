//
//  Dice.h
//  Threelow
//
//  Created by MINA FUJISAWA on 2017/08/25.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject
@property NSInteger currentValue;
@property NSString *currentValueSymbol;
@property BOOL isHeld;
@end
