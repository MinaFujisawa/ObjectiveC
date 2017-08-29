//
//  main.m
//  Payments
//
//  Created by MINA FUJISAWA on 2017/08/29.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger ran = arc4random_uniform(1000)+100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", ran);
        
        
        char inputChars[255];
        fgets(inputChars, 255, stdin);
        int select = atoi(inputChars);
        PaymentGateway *paymentGateway = [PaymentGateway new];
        if(select == 1){
            PaypalPaymentService *paypal = [PaypalPaymentService new];
            paymentGateway.paymentDelegate = paypal;
        } else if (select == 2){
            StripePaymentService *stripe = [StripePaymentService new];
            paymentGateway.paymentDelegate = stripe;
        } else if (select == 3){
            AmazonPaymentService *amazon = [AmazonPaymentService new];
            paymentGateway.paymentDelegate = amazon;
        }
        //if paymentDelegate is weak, you must put this is each if statments
        [paymentGateway processPaymentAmount:ran];
    }
    return 0;
}
