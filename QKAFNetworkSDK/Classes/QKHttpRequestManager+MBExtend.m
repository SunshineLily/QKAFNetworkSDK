//
//  QKHttpRequestManager+MBExtend.m
//  QKPublic
//
//  Created by wangxiaoli on 2018/5/30.
//  Copyright © 2018年 qk365. All rights reserved.
//

#import "QKHttpRequestManager+MBExtend.h"
#import <MBProgressHUD/MBProgressHUD.h>



@implementation QKHttpRequestManager (MBExtend)
- (void)startLoading {
    [self show:nil view:nil];
}

- (void)netLoading
{
    [self show:@"亲，您的手机貌似没联网" view:nil];
}
- (ProgressCallback)startFileLoading {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication].windows lastObject] animated:YES];
    ProgressCallback callback = ^(float progress) {
        hud.progress = progress;
        hud.label.text = @"文件传输中....";
    };
    return callback;
}

- (void)stopLoading {
    [MBProgressHUD hideHUDForView:[[UIApplication sharedApplication].windows lastObject] animated:YES];
}

- (void)showErrorMsg:(NSString *)msg {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[[UIApplication sharedApplication].windows lastObject] animated:YES];
    hud.backgroundView.color = [UIColor colorWithWhite:0.f alpha:.2f];
    hud.bezelView.color = [UIColor blackColor];
    hud.contentColor=[UIColor whiteColor];
    hud.label.text = msg;
    hud.label.font = [UIFont systemFontOfSize:15.0];
    hud.userInteractionEnabled= NO;

    [hud hideAnimated:NO afterDelay:1];
}


- (void)show:(NSString *)text  view:(UIView *)view
{
    if (view == nil)
        view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = text;
    hud.bezelView.color = [UIColor blackColor];
    hud.contentColor=[UIColor whiteColor];
    hud.label.font = [UIFont systemFontOfSize:15.0];
    hud.userInteractionEnabled= NO;

    
}


@end
