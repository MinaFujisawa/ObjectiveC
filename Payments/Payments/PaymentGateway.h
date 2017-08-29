//
//  PaymentGateway.h
//  Payments
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PaymentGateway;
@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount:(NSInteger) price;
- (BOOL) canProcessPayment;

@end


@interface PaymentGateway : NSObject
@property (nonatomic, strong) id paymentDelegate;
- (void) processPaymentAmount:(NSInteger) price;
@end
