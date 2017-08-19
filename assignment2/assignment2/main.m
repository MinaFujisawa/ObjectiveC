//
//  main.m
//  assignment2
//
//  Created by MINA FUJISAWA on 2017/08/19.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithHeight:10.3 Width: 10.9 Length:12.0];
        Box *box2 = [[Box alloc] initWithHeight:23.3 Width: 72.9 Length:12.0];
        NSLog(@"valum of box1 is %F", box1.getVolume);
        NSLog(@"valum of box1 is %F", box2.getVolume);
        NSLog(@"valum of box1 is %F", [box1 getVolume]);
        NSLog(@"box1 is %F times of box2", [box2 ratioToAnotherBox:box1]);
    }
    return 0;
}
