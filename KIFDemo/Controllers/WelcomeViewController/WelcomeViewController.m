//
//  WelcomeViewController.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 03/04/15.
//  Copyright (c) 2015 iQueSoft. All rights reserved.
//

#import "WelcomeViewController.h"

@implementation WelcomeViewController
- (IBAction)backAction:(UIBarButtonItem *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
