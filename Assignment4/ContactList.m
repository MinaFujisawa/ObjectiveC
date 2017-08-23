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

-(void) printList:(NSInteger)index {
    Contact *contact = [self.contacts objectAtIndex:index];
    NSLog(@"%ld: <%@ %@>", (long)index, [contact firstName], [contact lastName]);
}

-(void) printDetail:(NSInteger)index {
    
    if(index < [self.contacts count]) {
        Contact *contact = [self.contacts objectAtIndex:index];
        NSLog(@"%ld: <%@ %@> %@", (long)index, [contact firstName], [contact lastName],
              [contact email]);
    } else{
        NSLog(@"Not found");
    }
}

-(BOOL) isDuplicated:(NSString *)searchword {
    BOOL isFound = NO;
    for (int i = 0; i< [self.contacts count]; i++){
        Contact *contact = [self.contacts objectAtIndex:i];
        
        if([[contact email] isEqualToString:searchword]){
            isFound = YES;
            NSLog(@"the contact already exists");
            break;
        }
    }
    return isFound;
}

-(void) search:(NSString *)searchword {
    BOOL isFound = NO;
    for (int i = 0; i< [self.contacts count]; i++){
        Contact *contact = [self.contacts objectAtIndex:i];
        
        if([[contact firstName] isEqualToString:searchword] ||
           [[contact lastName] isEqualToString:searchword] ||
           [[contact email] isEqualToString:searchword]){
            isFound = YES;
            [self printDetail:i];
            break;
        }
    }
    if(!isFound){
        NSLog(@"Not found");
    }
}



@end
