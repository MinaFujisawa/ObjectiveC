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
            NSString *menuString = @"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - Display detail\nfind - Input keyword\nhistory - show history\nquit - Exit Application";
            NSString *menuInput = [inputCollector inputForPrompt: menuString];
            
            if([menuInput isEqualToString:@"quit"]) {
                break;
            } else if([menuInput isEqualToString:@"new"]) {
                Contact *contact = [[Contact alloc] init];
                [contact setEmail:[inputCollector inputForPrompt: @"What is your email address?"]];
                if([contactList isDuplicated:contact.email]) break;
                
                [contact setFirstName:[inputCollector inputForPrompt: @"What is your first name?"]];
                [contact setLastName:[inputCollector inputForPrompt: @"What is your last name?"]];
                [contactList addContact:contact];
            } else if([menuInput isEqualToString:@"list"]) {
                for (int i = 0; i < [contactList getLength]; i++) {
                    [contactList printList:i];
                }
                continue;
            } else if([menuInput isEqualToString:@"show"]) {
                NSInteger index = [[inputCollector inputForPrompt: @"Input Id of the contact you want to show"] intValue];
                [contactList printDetail:index];
            } else if([[[menuInput componentsSeparatedByString:@" "] objectAtIndex:0] isEqualToString:@"find"]) {
                if([[menuInput componentsSeparatedByString:@" "] count] < 2){
                    NSLog(@"input search term along with a 'find'");
                } else{
                    NSString* keyword = [[menuInput componentsSeparatedByString:@" "] objectAtIndex:1];
                    [contactList search: keyword];
                }
            } else if([menuInput isEqualToString:@"history"]) {
                [inputCollector showHistory];
            }
        }

        
    }
    return 0;
}
