//
//  Box.h
//  assignment2
//
//  Created by MINA FUJISAWA on 2017/08/19.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype)initWithHeight:(float) height Width: (float) width Length: (float) length;
- (float) getVolume;
- (float) ratioToAnotherBox:(Box *) box;

@end
