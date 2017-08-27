//
//  main.m
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p1 = [[Patient alloc] initWithName:@"Jack" age:19 symptom:@"stomachache" hasHealthCard:YES];
        Patient *p2 = [[Patient alloc] initWithName:@"Fumin" age:15 symptom:@"stomachache" hasHealthCard:NO];
        Patient *p3 = [[Patient alloc] initWithName:@"Mina" age:24 symptom:@"headache" hasHealthCard:YES];
        Doctor *d1 = [[Doctor alloc] initWithName:@"Tony" age:45];
        
        [p1 visit:d1.name];
        [d1 acceptPatiant:p1];
        [p2 visit:d1.name];
        [d1 acceptPatiant:p2];
        [p3 visit:d1.name];
        [d1 acceptPatiant:p3];
        
        [p1 setPrescription:[d1 requestMedication:p1]];
        [p2 setPrescription:[d1 requestMedication:p2]];
        [p3 setPrescription:[d1 requestMedication:p3]];
        
        NSLog(@"Dr. %@'s patient list", d1.name);
        for(int i = 0; i < d1.patientsList.count; i++){
            NSLog(@"%@", [[d1.patientsList objectAtIndex:i] name]);
            NSLog(@"%@", [[d1 prescribedList] valueForKey:[[d1.patientsList objectAtIndex:i] patientId]]);
            NSLog(@"\n");
        }
    }
    return 0;
}
