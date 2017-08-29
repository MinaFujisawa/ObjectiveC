//
//  StripePaymentService.m
//  Payments
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
- (void) processPaymentAmount:(NSInteger)price{
    NSLog(@"%ld, process by Stripe", price);
}
- (BOOL) canProcessPayment{
    return arc4random_uniform(2);
}
@end
