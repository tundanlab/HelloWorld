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

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Hello world";
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self createTextField];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CreateSomeView

- (void) createTextField {
    float x = 40;
    self.mainTextField = [[UITextField alloc] initWithFrame:CGRectMake(x, 100, [UIScreen mainScreen].bounds.size.width - 2 * x, 30)];
    self.mainTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.mainTextField];
}

@end
