//
//  ContactList.m
//  Assignment4
//
//  Created by MINA FUJISAWA on 2017/08/22.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (id) init {
    self = [super init];
    if (self) {
        self.contacts = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void)addContact:(Contact *)newContact {
    [self.contacts addObject:newContact];
}

-(NSInteger) getLength {
    return [self.contacts count];
}

-(void) printList:(Contact *)contact index:(NSInteger)index {
    NSLog(@"%ld: <%@ %@>", (long)index, [contact firstName], [contact lastName]);
}

@end
