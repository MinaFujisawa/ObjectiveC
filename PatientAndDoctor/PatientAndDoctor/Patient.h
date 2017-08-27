//
//  Patient.h
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSString* symptom;
@property (nonatomic) BOOL hasHealthCard;

@property (nonatomic) NSString* patientId;
@property (nonatomic) NSString* prescription;
@property (nonatomic) NSString* doctorName;

- (id)initWithName:(NSString *)name_ age:(NSInteger)age_ symptom:(NSString *)symptom_ hasHealthCard:(BOOL)hasHealthCard_;
- (void) visit:(NSString*) name;
@end
