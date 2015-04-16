//
//  ParseManager.h
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 16/04/15.
//  Copyright (c) 2015 Oleg Vishnivetskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParseManager : NSObject

- (void)loginWithUsername: (NSString *)username password: (NSString *)password success:(void(^)(BOOL success))success;

@end
