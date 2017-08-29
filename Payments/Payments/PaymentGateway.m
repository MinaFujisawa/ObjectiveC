//
//  PaymentGateway.m
//  Payments
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void) processPaymentAmount:(NSInteger) price{
    if([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount:price];
    } else{
        NSLog(@"not acceptable");
    }
}
@end
