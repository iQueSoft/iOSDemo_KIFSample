//
//  ParseManager.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 16/04/15.
//  Copyright (c) 2015 iQueSoft. All rights reserved.
//

#import "ParseManager.h"
#import "Constants.h"

@implementation ParseManager

- (void)loginWithUsername: (NSString *)username password: (NSString *)password success: (ResultBlock )resultBlock {
    
    if ([username isEqualToString: kCorrectUserName] && [password isEqualToString: kPassword]) {
        resultBlock(YES, nil);
    } else {
        NSError *theError = [NSError errorWithDomain: @"Login Error" code: 1 userInfo: @{NSLocalizedDescriptionKey : @"Your user name and password\nincorrect.\nTry again"}];
        
        resultBlock(NO, theError);
    }
}

@end
