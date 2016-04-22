//
//  LoginPresenter.m
//  MVPDemo
//
//  Created by YISHANG on 16/4/22.
//  Copyright © 2016年 MAXIAO. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginModel.h"
@implementation LoginPresenter
- (void)loginWithAccount:(NSString *)account password:(NSString *)password success:(void (^)())loginSuccess failure:(void (^)())loginFailed {
    [[LoginModel shareInstance] loginWithAcoount:account password:password success:^{
        loginSuccess();
    } failure:^{
        loginFailed();
    }];
}
@end
