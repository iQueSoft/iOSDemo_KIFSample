//
//  ParseManager.h
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 16/04/15.
//  Copyright (c) 2015 iQueSoft. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ResultBlock)(BOOL success, NSError *error);

@interface ParseManager : NSObject

- (void)loginWithUsername: (NSString *)username password: (NSString *)password success: (ResultBlock)result;

@end
