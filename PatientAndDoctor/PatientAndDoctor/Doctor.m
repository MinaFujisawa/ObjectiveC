//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (id)initWithName:(NSString *)name_ age:(NSInteger)age_
{
    self = [super init];
    if (self) {
        self.name = name_;
        self.age = age_;
        self.patientsList = [NSMutableArray array];
        
    }
    return self;
}

- (void) acceptPatiant:(Patient*) patiant {
    if(patiant.hasHealthCard){
        [_patientsList addObject:patiant];
    }
}
- (NSString*) requestMedication: (Patient*)patient{
    NSString *prescription;
    if([_patientsList containsObject:patient]){
        prescription = [[super prescriptions] valueForKey:patient.symptom];
        [[super prescribedList] setObject:prescription forKey:patient.patientId];
    }
    
    return prescription;
}

@end
