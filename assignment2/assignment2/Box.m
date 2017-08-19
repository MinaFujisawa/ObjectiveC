//
//  Box.m
//  assignment2
//
//  Created by MINA FUJISAWA on 2017/08/19.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "Box.h"

@implementation Box

// initializer (constructor)
- (instancetype)initWithHeight:(float) height Width: (float) width Length: (float) length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) getVolume{
    return self.height * self.width * self.length;
}

- (float) ratioToAnotherBox:(Box *) box{
    return self.getVolume / box.getVolume;
}


@end
