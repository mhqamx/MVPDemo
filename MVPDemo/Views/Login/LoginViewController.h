//
//  LoginViewController.h
//  MVPDemo
//
//  Created by YISHANG on 16/4/22.
//  Copyright © 2016年 MAXIAO. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LoginPresenter;
@interface LoginViewController : UIViewController
- (instancetype)initWithPresenter:(LoginPresenter *)presenter;
@end
