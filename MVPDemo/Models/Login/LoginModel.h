//
//  LoginModel.h
//  MVPDemo
//
//  Created by YISHANG on 16/4/22.
//  Copyright © 2016年 MAXIAO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginModel : NSObject

+ (instancetype)shareInstance;

- (void)loginWithAcoount:(NSString *)account password:(NSString *)password success:(void (^)())loginSuccess failure:(void (^)())loginFailed;
@end
