//
//  Hospital.m
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Hospital.h"

@implementation Hospital

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.prescribedList = [NSMutableDictionary dictionary];
        self.prescriptions = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                              @"headache medicine", @"headache",
                              @"stomachache medicine", @"stomachache",
                              nil];
    }
    return self;
}

@end
