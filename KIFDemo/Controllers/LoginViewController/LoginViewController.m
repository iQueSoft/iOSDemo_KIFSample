//
//  LoginViewController.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 03/04/15.
//  Copyright (c) 2015 Oleg Vishnivetskiy. All rights reserved.
//

#import "LoginViewController.h"
#import "ParseManager.h"

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
        
    [self.parseManager loginWithUsername: self.userNameTextField.text
                                password: self.passwordTextField.text
                                 success:
     ^(BOOL success) {
         if (success) {
             [self performSegueWithIdentifier: @"loginToWelcome" sender: self];
         } else {
             [self showErrorAlert];
         }
     }];
}

- (IBAction)backButtonAction:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated: YES];
}

#pragma mark - Helpers

- (void)showErrorAlert {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"Sorry!" message: @"Your user name and password\nnot correct.\nTry again" preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle: @"Ok" style: UIAlertActionStyleCancel handler: nil];
    [alert addAction: action];
    
    [self presentViewController: alert animated: YES completion: nil];
}

@end
