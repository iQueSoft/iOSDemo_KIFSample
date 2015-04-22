//
//  LoginViewController.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 03/04/15.
//  Copyright (c) 2015 Oleg Vishnivetskiy. All rights reserved.
//

#import "LoginViewController.h"
#import "ParseManager.h"

static NSString * const kLoginToWelcomeSegueId = @"loginToWelcome";

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) ParseManager *parseManager;

@end


@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.parseManager = [ParseManager new];
}

#pragma mark - Actions

- (IBAction)loginAction:(UIButton *)sender {
    
    [self.parseManager loginWithUsername: self.userNameTextField.text password: self.passwordTextField.text success:^(BOOL success, NSError *error) {
        if (success) {
            [self performSegueWithIdentifier: kLoginToWelcomeSegueId sender: self];
        } else {
            [self showError: error];
        }
    }];
}

- (IBAction)backButtonAction:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated: YES];
}

#pragma mark - Helpers

- (void)showError: (NSError *)error {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"Sorry!" message: error.localizedDescription preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle: @"Ok" style: UIAlertActionStyleCancel handler: nil];
    [alert addAction: action];
    
    [self presentViewController: alert animated: YES completion: nil];
}

@end
