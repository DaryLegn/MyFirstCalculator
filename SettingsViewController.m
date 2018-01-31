//
//  SettingsViewController.m
//  Calculator
//
//  Created by Дарья Кравченко on 06.09.17.
//  Copyright © 2017 Дарья Лень. All rights reserved.
//

#import "SettingsViewController.h"
#import "ViewController.h"
#import "Singleton.h"

@interface SettingsViewController ()


@end

@implementation SettingsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //_nightMod.on = NO;
    //[_nightMod setOn:YES animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nightModButtonPress:(UISwitch *)sender {
        if (sender.isOn == YES) {
          self.view.backgroundColor = [UIColor blueColor];
        } else {
        
           // self.view.backgroundColor = [UIColor redColor];
    }

}
- (IBAction)saveResultButtonPress:(UISwitch *)sender {

if (sender.isOn == NO) {
    
} else {
    
}
}

- (IBAction)saveButtonPress:(UIButton *)sender {
    
}




@end
