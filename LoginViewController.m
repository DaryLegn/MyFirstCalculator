//
//  LoginViewController.m
//  Calculator
//
//  Created by Дарья Кравченко on 12.09.17.
//  Copyright © 2017 Дарья Лень. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadString = [defaults objectForKey:@"userName"];
    self.userName.text = [defaults objectForKey:@"userName"];
    [_userName setText: loadString];
    
}
- (IBAction)Remember:(UISwitch *)paramsender {
    
    NSLog(@"Sender is = %@", paramsender);
    if ([paramsender isOn]){
        NSString *saveString = self.userName.text;
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject: saveString forKey: @"userName"];
        [defaults synchronize];
    } else {
        //self.view.backgroundColor = [UIColor lightGrayColor];
    }
}
- (IBAction)back:(id)sender { 
    // [self.view and : YES];
}
/*
 - (IBAction)saveLogin:(id)sender {
 NSString *saveString = self.userName.text;
 NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
 [defaults setObject: saveString forKey: @"userName"];
 [defaults synchronize];
 }
 
 
 }
 
 -(IBAction)enterLogin:(id)sender
 {
 if ([[_dictionary objectForKey:_login.text] isEqualToString: _password.text]) {
 }
 }
 
 - (void)loginSave {
 NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
 [_defaults setObject :login forKey:@"login"];
 [defaults setObject:password forKey:@"password"];
 
 login = [userDefaults objectForKey:@"login"];
 password = [userDefaults objectForKey:@"password"];
 }
 } 
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
