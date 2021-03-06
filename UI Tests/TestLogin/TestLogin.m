//
//  TestLogin.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 03/04/15.
//  Copyright (c) 2015 iQueSoft. All rights reserved.
//

#import "TestLogin.h"
#import "Constants.h"

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
    
    
    [tester enterText: kIncorrectUserName intoViewWithAccessibilityLabel: @"UserName"];
    [tester enterText: kPassword intoViewWithAccessibilityLabel: @"Password"];
    
    [tester tapViewWithAccessibilityLabel: @"EnterLogin"];
    [tester tapViewWithAccessibilityLabel: @"Ok"];
    
}

- (void)testLogin {
    
    [tester enterText: kCorrectUserName intoViewWithAccessibilityLabel: @"UserName"];
    [tester enterText: kPassword intoViewWithAccessibilityLabel: @"Password"];
    
    [tester waitForTimeInterval: 2];
    
    [tester tapViewWithAccessibilityLabel: @"EnterLogin"];
    
}

@end
