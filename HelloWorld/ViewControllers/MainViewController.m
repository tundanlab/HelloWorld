//
//  MainViewController.m
//  HelloWorld
//
//  Created by tund on 4/11/17.
//  Copyright © 2017 anlab. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) UITextField * mainTextField;
@property (nonatomic, strong) UIButton * updateButton;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Hello world";
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self createMainTextField];
    [self createUpdateButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CreateSomeView

- (void) createMainTextField {
    float x = 40;
    self.mainTextField = [[UITextField alloc] initWithFrame:CGRectMake(x, 100, [UIScreen mainScreen].bounds.size.width - 2 * x, 30)];
    self.mainTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.mainTextField];
}

- (void) createUpdateButton {
    self.updateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.updateButton.frame = CGRectMake(0, CGRectGetMaxY(self.mainTextField.frame) + 40.0, 100, self.mainTextField.frame.size.height);
    self.updateButton.center = CGPointMake(self.view.center.x, self.updateButton.center.y);
    [self.updateButton setTitle:@"Update" forState:UIControlStateNormal];
    [self.updateButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:self.updateButton];
}

#pragma mark - HandleButtonTouch

- (void) updateButtonTouch {
    self.title = self.mainTextField.text;
}

@end
