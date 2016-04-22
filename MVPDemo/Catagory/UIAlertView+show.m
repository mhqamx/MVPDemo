//
//  UIAlertView+show.m
//  MVPDemo
//
//  Created by YISHANG on 16/4/22.
//  Copyright © 2016年 MAXIAO. All rights reserved.
//

#import "UIAlertView+show.h"

@implementation UIAlertView (show)
+ (void)showAlertWithTitle:(NSString *)title {
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:title message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alter show];
}
@end
