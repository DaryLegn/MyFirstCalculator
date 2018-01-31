
//
//  ViewController.m
//  First
//
//
//  Copyright © 2017 Дарья Лень. All rights reserved.
//
#import "ViewController.h"

typedef NS_ENUM (NSInteger, Operations ) {
    OperationPlus = 1,
    OperationMinus,
    OperationMultiply,
    OperationDivide,
};

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField *inputTextField;
@property (nonatomic, assign) Operations operation;
@property (nonatomic, strong) NSMutableArray *results;

@end

@implementation ViewController

#pragma mark - Metods

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadString = [defaults objectForKey:@"textField"];
    self.saveColor = [defaults objectForKey:@"textField"];
    [_inputTextField setText: loadString];
    self.results = [NSMutableArray array];
}

- (void)calculate{
    switch (self.operation) {
        case OperationPlus:
            self.inputTextField.text = @(self.operand1+self.operand2).stringValue;
            break;
        case OperationMinus:
            self.inputTextField.text = @(self.operand1-self.operand2).stringValue;
            break;
        case OperationMultiply:
            self.inputTextField.text = @(self.operand1*self.operand2).stringValue;
            break;
        case OperationDivide:
            self.inputTextField.text = @(self.operand1/self.operand2).stringValue;
            break;
        default:
            break;
    }
    
    [self.results addObject:self.inputTextField.text];
    
    NSLog(@"last result: %@", [self.results lastObject]);
    
}

- (void) clearResult {
    if (self.clear) {
        self.inputTextField.text = @"";
        self.clear = NO;
    }
}
#pragma mark - Buttons

- (IBAction)digitButtonPress:(UIButton *)sender {
    [self clearResult];
    self.inputTextField.text = [NSString stringWithFormat:@"%@%@", self.inputTextField.text, @(sender.tag)];
    if (self.operation){
        self.operand2 = self.inputTextField.text.floatValue;
    } else {
        self.operand1 = self.inputTextField.text.floatValue;
    }
}

- (IBAction)fraction:(UIButton *)sender {
    self.inputTextField.text =@".";
    self.clear = YES;
}

- (IBAction)operationButtonPress:(UIButton *)sender {
    self.operation = sender.tag;
    self.clear = YES;
}

- (IBAction)egualsButtonPress:(UIButton *)sender {
    [self calculate];
    [self clearAllButtonPress:nil];
    //[self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)clearButtonPress:(UIButton *)sender {
    // [self clearAllButtonPress:nil];
    self.inputTextField.text =@"0";
}
- (IBAction)clearAllButtonPress:(UIButton *)sender {
    self.tempParam = self.inputTextField.text.floatValue;
    self.clear = YES;
    self.operand1 = 0;
    self.operand2 = 0;
    self.operation = 0;
    
}

- (IBAction)changeColorSwitcher:(UISwitch *)sender {
    if (sender.isOn == YES) {
        self.view.backgroundColor = [UIColor blackColor];
    }else{
        self.view.backgroundColor = [UIColor blueColor];
    }
    
}

@end
