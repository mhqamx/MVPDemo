//
//  LoginViewController.m
//  MVPDemo
//
//  Created by YISHANG on 16/4/22.
//  Copyright © 2016年 MAXIAO. All rights reserved.
//

#import "LoginViewController.h"
#import "UIAlertView+show.h"
#import "LoginPresenter.h"
@interface LoginViewController ()
@property (nonatomic, strong) UITextField  *accountTextField;
@property (nonatomic, strong) UITextField  *pwdTextFidle;
@property (nonatomic, strong) LoginPresenter  *presenter;

@end
@implementation LoginViewController

- (UITextField *)accountTextField {
    if (!_accountTextField) {
        _accountTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
        _accountTextField.center = CGPointMake(self.view.center.x, 100);
        _accountTextField.borderStyle = UITextBorderStyleRoundedRect;
        _accountTextField.placeholder = @"请输入用户名";
    }
    return _accountTextField;
}

- (UITextField *)pwdTextFidle {
    if (!_pwdTextFidle) {
        _pwdTextFidle = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
        _pwdTextFidle.center = CGPointMake(self.view.center.x, 200);
        _pwdTextFidle.borderStyle = UITextBorderStyleRoundedRect;
        _pwdTextFidle.placeholder = @"请输入密码";
    }
    return _pwdTextFidle;
}

- (instancetype)initWithPresenter:(LoginPresenter *)presenter {
    self = [super init];
    if (self) {
        self.presenter = presenter;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
    // Do any additional setup after loading the view.
}

- (void)configUI {
    [self.view addSubview:self.accountTextField];
    [self.view addSubview:self.pwdTextFidle];
    UIButton *loginButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
    loginButton.frame = CGRectMake(0, 0, 200, 50);
    loginButton.center = CGPointMake(self.view.center.x, 300);
    [loginButton setTitle:@"登录" forState:(UIControlStateNormal)];
    [loginButton addTarget:self action:@selector(loginAction) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:loginButton];
}

- (void)loginAction {
    [self.view endEditing:YES];
    if (!self.accountTextField.hasText || !self.pwdTextFidle.hasText) {
        return;
    }
    [self.presenter loginWithAccount:self.accountTextField.text password:self.pwdTextFidle.text success:^{
        [UIAlertView showAlertWithTitle:@"登陆成功"];
    } failure:^{
        [UIAlertView showAlertWithTitle:@"登录失败"];
    }];
    
}
@end
