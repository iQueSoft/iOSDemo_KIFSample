//
//  LoginViewController.m
//  KIFDemo
//
//  Created by Oleg Vishnivetskiy on 03/04/15.
//  Copyright (c) 2015 Oleg Vishnivetskiy. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;


@end


@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)loginAction:(UIButton *)sender {
    
    if ([self.userNameTextField.text isEqualToString: @"userName@my.com"] &&
        [self.passwordTextField.text isEqualToString: @"password"]) {
        [self performSegueWithIdentifier: @"loginToWelcome" sender: self];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"Sorry!" message: @"Your user name and password\nnot correct\nTry again" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle: @"Ok" style: UIAlertActionStyleCancel handler: nil];
        
        
        [alert addAction: action];
        
        [self presentViewController: alert animated: YES completion: nil];
    }
}
- (IBAction)backButtonAction:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated: YES];
}

@end
