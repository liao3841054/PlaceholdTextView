//
//  ViewController.m
//  PlaceholdTextView
//
//  Created by 益平廖 on 16/4/18.
//  Copyright © 2016年 Liaoyp. All rights reserved.
//

#import "ViewController.h"
#import "PlaceholdTextView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(10, 64, CGRectGetWidth(self.view.frame) - 20, 35)];
    field.layer.borderWidth = 1;
    field.layer.borderColor = [UIColor lightGrayColor].CGColor;
    field.placeholder = @"请输入手机号";
    [self.view addSubview:field];
    
    PlaceholdTextView *placeTextView = [[PlaceholdTextView alloc] initWithFrame:CGRectInset(self.view.frame, 10, 120)];
    placeTextView.backgroundColor = [UIColor clearColor];
    placeTextView.layer.borderWidth = 1;
    placeTextView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    placeTextView.returnKeyType = UIReturnKeyNext;
//    placeTextView.placeholderColor = [UIColor orangeColor];
    placeTextView.placeholder = @"请填写的你的手机号";
    placeTextView.placeHolderLabel.font = [UIFont systemFontOfSize:16];
    placeTextView.font = [UIFont systemFontOfSize:14.0];
    [self.view addSubview:placeTextView];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
