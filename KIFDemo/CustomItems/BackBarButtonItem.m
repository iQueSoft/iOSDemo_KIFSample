//
//  BackBarButtonItem.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 03/04/15.
//  Copyright (c) 2015 iQueSoft. All rights reserved.
//

#import "BackBarButtonItem.h"

@implementation BackBarButtonItem

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setAccessibilityLabel: NSStringFromClass([self class])];
}

@end
