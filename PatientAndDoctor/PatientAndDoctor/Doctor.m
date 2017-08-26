//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name_ age:(NSInteger)age_ specialty:(NSString *)specialty_
{
    self = [super init];
    if (self) {
        self.name = name_;
        self.age = age_;
        self.specialty = specialty_;
    }
    return self;
}

@end
