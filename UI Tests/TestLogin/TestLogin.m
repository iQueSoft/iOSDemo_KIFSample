//
//  TestLogin.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 03/04/15.
//  Copyright (c) 2015 Oleg Vishnivetskiy. All rights reserved.
//

#import "TestLogin.h"

@implementation TestLogin

- (void)beforeEach {
    [tester waitForViewWithAccessibilityLabel: @"Login" traits: UIAccessibilityTraitButton];
    [tester tapViewWithAccessibilityLabel: @"Login"];
}

- (void)afterEach {
    [tester waitForTimeInterval: 2];
    [tester tapViewWithAccessibilityLabel: @"BackBarButtonItem"];
}

- (void)testIncorrectLogin {
    
    
    [tester enterText: @"incorrect@userName" intoViewWithAccessibilityLabel: @"UserName"];
    [tester enterText: @"password" intoViewWithAccessibilityLabel: @"Password"];
    
    [tester tapViewWithAccessibilityLabel: @"EnterLogin"];
    [tester tapViewWithAccessibilityLabel: @"Ok"];
    
}

- (void)testLogin {
    
    [tester enterText: @"userName@my.com" intoViewWithAccessibilityLabel: @"UserName"];
    [tester enterText: @"password" intoViewWithAccessibilityLabel: @"Password"];
    
    [tester waitForTimeInterval: 2];
    
    [tester tapViewWithAccessibilityLabel: @"EnterLogin"];
    
}

@end
