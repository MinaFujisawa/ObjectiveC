//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hospital.h"
@class Patient;

@interface Doctor : Hospital
@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSMutableArray* patientsList;

- (id)initWithName:(NSString *)name_ age:(NSInteger)age_;
- (NSString*) requestMedication: (Patient*)patient;
- (void) acceptPatiant:(Patient*) patiant;

@end
