//
//  LoginModel.m
//  MVPDemo
//
//  Created by YISHANG on 16/4/22.
//  Copyright © 2016年 MAXIAO. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel
+ (instancetype)shareInstance {
    static LoginModel *model = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        model = [[LoginModel alloc] init];
    });
    return model;
}

- (void)loginWithAcoount:(NSString *)account password:(NSString *)password success:(void (^)())loginSuccess failure:(void (^)())loginFailed {
    if ([account isEqualToString:@"max"] && [password isEqualToString:@"123"]) {
        loginSuccess();
    } else {
        loginFailed();
    }
}
@end
