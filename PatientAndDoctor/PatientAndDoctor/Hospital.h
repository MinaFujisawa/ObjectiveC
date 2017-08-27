//
//  Hospital.h
//  PatientAndDoctor
//
//  Created by MINA FUJISAWA on 2017/08/26.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hospital : NSObject
@property (nonatomic, strong) NSMutableDictionary* prescribedList;
@property (nonatomic, strong) NSMutableDictionary* prescriptions;
@end
