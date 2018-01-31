//
//  SingUpViewController.m
//  Calculator
//
//  Created by Дарья Кравченко on 30.01.2018.
//  Copyright © 2018 Дарья Лень. All rights reserved.
//

#import "SingUpViewController.h"

@interface SingUpViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *combinePasswordTextField;

@end

@implementation SingUpViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadString = [defaults objectForKey:@"firstName"];
    self.firstNameTextField.text = [defaults objectForKey:@"firstName"];
    [_firstNameTextField setText: loadString];
    NSString *loadString1 = [defaults objectForKey:@"lastName"];
    self.lastNameTextField.text = [defaults objectForKey:@"lastName"];
    [_lastNameTextField setText: loadString1];
    NSString *loadString2 = [defaults objectForKey:@"userName"];
    self.userNameTextField.text = [defaults objectForKey:@"userName"];
    [_userNameTextField setText: loadString2];
    NSString *loadString3 = [defaults objectForKey:@"email"];
    self.emailTextField.text = [defaults objectForKey:@"email"];
    [_emailTextField setText: loadString3];
    
}


- (IBAction)saveButtonPress:(id)sender {
    
    NSString *saveStringFirstName = self.firstNameTextField.text;
    NSString *saveStringLastName = self.lastNameTextField.text;
    NSString *saveStringUserName = self.userNameTextField.text;
    NSString *saveStringEmail = self.emailTextField.text;
    NSString *saveStringPassword = self.passwordTextField.text;
    NSString *saveStringPasswordCombine = self.combinePasswordTextField.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject: saveStringFirstName forKey: @"firstName"];
    [defaults setObject: saveStringLastName forKey: @"lastName"];
    [defaults setObject: saveStringUserName forKey: @"userName"];
    [defaults setObject: saveStringEmail forKey: @"email"];
    [defaults setObject: saveStringPassword forKey: @"password"];
    [defaults setObject: saveStringPasswordCombine forKey: @"passwordCombine"];
    
    [defaults synchronize];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) changesBackroundColor{
    
    self.view.backgroundColor = [UIColor redColor];
}

- (BOOL) validateEmail:(NSString*) email {

    NSString * const regularExpression = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSError* error = NULL;
    
    NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:regularExpression
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                                                error:&error];
        if (!regex){
            UIAlertController* alert=[UIAlertController alertControllerWithTitle:@"Error"
                                                                         message:@"Email don't right"
                                                                  preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* yesButton = [UIAlertAction actionWithTitle:@"Ok"
                                                                style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action)
                                        {
                                            NSLog(@"you pressed No, thanks button");
                                        }];
            
                    [alert addAction:yesButton];
            
            [self presentViewController:alert animated:YES completion:nil];
        }

    return self;

}


@end

