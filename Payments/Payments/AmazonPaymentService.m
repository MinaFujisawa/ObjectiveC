//
//  AmazonPaymentService.m
//  Payments
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
- (void) processPaymentAmount:(NSInteger)price{
    NSLog(@"%ld, process by Amazon", price);
}
- (BOOL) canProcessPayment{
    return arc4random_uniform(2);
}
@end
