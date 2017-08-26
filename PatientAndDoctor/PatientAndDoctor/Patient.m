//
//  Patient.m
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Patient.h"

@implementation Patient
- (instancetype)initWithName:(NSString *)name_ age:(NSInteger)age_ symptom:(NSString *)symptom_ hasHealthCard:(BOOL)hasHealthCard_
{
    self = [super init];
    if (self) {
        self.name = name_;
        self.age = age_;
        self.symptom = symptom_;
        self.hasHealthCard = hasHealthCard_;
    }
    return self;
}
@end
