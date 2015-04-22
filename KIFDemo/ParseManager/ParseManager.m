//
//  ParseManager.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 16/04/15.
//  Copyright (c) 2015 Oleg Vishnivetskiy. All rights reserved.
//

#import "ParseManager.h"
#import <Parse/Parse.h>

@implementation ParseManager

- (void)loginWithUsername: (NSString *)username password: (NSString *)password success: (ResultBlock )resultBlock {
    
    [PFUser logInWithUsernameInBackground: username password: password block:^(PFUser *user, NSError *error) {
        if (!error) {
            resultBlock(YES, nil);
        } else {
            resultBlock(NO, error);
            NSLog(@"Error: %@", error.localizedDescription);
        }
    }];
}

@end
