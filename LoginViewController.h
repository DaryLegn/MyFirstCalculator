//
//  LoginViewController.h
//  Calculator
//
//  Created by Дарья Кравченко on 12.09.17.
//  Copyright © 2017 Дарья Лень. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserModel.h"
#import "ViewController.h"



@interface LoginViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *userName;
@property (nonatomic, strong) IBOutlet UITextField *passwordtext;
@property (nonatomic, strong) NSUserDefaults *defaults;
@property (nonatomic, strong) NSDictionary *dictionary;
@property (nonatomic, weak) id <MyFirstDelegate> delegate;

- (IBAction)Remember:(UISwitch *)paramsender;

@end


