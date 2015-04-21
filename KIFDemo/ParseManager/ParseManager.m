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


#ifdef KIFDemo


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

#else

- (void)loginWithUsername: (NSString *)username password: (NSString *)password success: (ResultBlock )resultBlock {
    [self testLoginWithUsername: (NSString *)username password: (NSString *)password block: resultBlock];
}
#endif

#pragma mark - Test Helpers

- (void) testLoginWithUsername: (NSString *)username
                      password: (NSString *)password
                         block: (ResultBlock )resultBlock {
    if ([username isEqualToString: kCorrectUserName] && [password isEqualToString: kPassword]) {
        resultBlock(YES, nil);
    } else {
        NSError *theError = [NSError errorWithDomain: @"Login Error" code: 1 userInfo: @{NSLocalizedDescriptionKey : @"Your user name and password\nincorrect.\nTry again"}];
        
        resultBlock(NO, theError);
    }
}

@end
