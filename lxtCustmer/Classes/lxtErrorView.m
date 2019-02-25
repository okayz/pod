//
//  StuErrorView.m
//  StuClient
//
//  Created by microlanguage on 2018/9/21.
//  Copyright © 2018年 lexuetong. All rights reserved.
//

#import "lxtErrorView.h"

@implementation StuErrorView

+ (void)showErrorWithInfo:(NSString *)info{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UIView *tagView = [window viewWithTag:994];
    if (tagView) {
        return;
    }
    
    CGRect rect = [UIApplication sharedApplication].keyWindow.bounds;
    UIView *bgView = [[UIView alloc]initWithFrame:rect];
    bgView.tag = 994;
    bgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [[UIApplication sharedApplication].keyWindow addSubview:bgView];
    
    UIImageView *bgImage = [[UIImageView alloc]init];
    bgImage.image = [UIImage imageNamed:@"alert_bgImage"];
    [bgView addSubview:bgImage];
        
    
}




+ (void)closeTap{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UIView *bgView = [window viewWithTag:995];
    [bgView removeFromSuperview];
}

@end
