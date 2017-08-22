//
//  main.m
//  Assignment4
//
//  Created by MINA FUJISAWA on 2017/08/22.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];

        while(1){
            NSString *menuString = @"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application";
            NSString *menuInput = [inputCollector inputForPrompt: menuString];
            NSLog(@"%@", menuInput);
            
            if([menuInput isEqualToString:@"quit"]) {
                break;
            } else if([menuInput isEqualToString:@"new"]) {
                Contact *contact = [[Contact alloc] init];
                [contact setFirstName:[inputCollector inputForPrompt: @"What is your first name?"]];
                [contact setLastName:[inputCollector inputForPrompt: @"What is your last name?"]];
                [contact setEmail:[inputCollector inputForPrompt: @"What is your email address?"]];
                [contactList addContact:contact];
            } else if([menuInput isEqualToString:@"list"]) {
                for (int i = 0; i < [contactList getLength]; i++) {
                    Contact *contact = [contactList.contacts objectAtIndex:i];
                    [contactList printList:contact index:i];
                }
                continue;
            }
        }

        
    }
    return 0;
}
