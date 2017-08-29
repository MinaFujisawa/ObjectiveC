//
//  PaypalPaymentService.m
//  Payments
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService
- (void) processPaymentAmount:(NSInteger)price{
    NSLog(@"%ld, process by Paypal", price);
}
- (BOOL) canProcessPayment{
    return arc4random_uniform(2);
}
@end
