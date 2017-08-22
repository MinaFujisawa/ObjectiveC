//
//  ContactList.h
//  Assignment4
//
//  Created by MINA FUJISAWA on 2017/08/22.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : Contact
@property (strong, nonatomic) NSMutableArray* contacts;
-(void)addContact:(Contact *)newContact;
-(NSInteger) getLength;
-(void) printList:(Contact *)contact index:(NSInteger)index;
@end
