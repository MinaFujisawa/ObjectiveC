//
//  Patient.h
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;
@property (nonatomic) NSString* symptom;
@property (nonatomic) BOOL hasHealthCard;
@end
