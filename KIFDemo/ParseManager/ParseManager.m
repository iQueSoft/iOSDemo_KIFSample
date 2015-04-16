//
//  ParseManager.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 16/04/15.
//  Copyright (c) 2015 Oleg Vishnivetskiy. All rights reserved.
//

#import "ParseManager.h"
#import <Parse/Parse.h>
#import "Constants.h"

@implementation ParseManager

- (void)loginWithUsername: (NSString *)username password: (NSString *)password success:(void(^)(BOOL success))success {

#ifdef KIFDemo

    [PFUser logInWithUsernameInBackground: username password: password block:^(PFUser *user, NSError *error) {
        if (!error) {
            success(YES);
        } else {
            NSLog(@"Error: %@", error.localizedDescription);
        }
    }];
    
#else

    if ([username isEqualToString: kCorrectUserName] && [password isEqualToString: kPassword]) {
        success(YES);
    } else {
        success(NO);
    }

#endif
}


@end
