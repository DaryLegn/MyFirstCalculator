//
//  ViewController.h
//  Calculator
//
//  Created by Дарья Кравченко on 30.08.17.
//  Copyright © 2017 Дарья Лень. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyFirstDelegate.h"
#import "AppDelegate.h"

@protocol MyFirstDelegate <NSObject>

@required

- (IBAction)saveButtonPress:(id)sender;

@optional

-(void) changesBackroundColor:(UIColor *)color;
@end

@interface ViewController : UIViewController

@property (nonatomic, assign) CGFloat tempParam;
@property (nonatomic, assign) BOOL clear;
@property (nonatomic, strong) NSString *str;
@property (nonatomic, assign) CGFloat operand1;
@property (nonatomic, assign) CGFloat operand2;
@property (nonatomic, assign) CGFloat *fraction;
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, assign) NSString *saveColor;
@property (nonatomic, assign) NSArray *arrayOfColor;

- (void)viewDidLoad;
- (void)calculate;
- (void) clearResult;

@end

