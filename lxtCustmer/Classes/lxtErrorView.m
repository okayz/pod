//
//  StuErrorView.m
//  StuClient
//
//  Created by microlanguage on 2018/9/21.
//  Copyright © 2018年 lexuetong. All rights reserved.
//

#import "lxtErrorView.h"
#import "UIButton+StuButton.h"

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
    
    CGFloat width = kScreen_Height * 0.8;
    CGFloat height = width * 0.6;
    [bgImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(bgView);
        make.centerY.equalTo(bgView);
        make.height.mas_equalTo(height);
        make.width.mas_equalTo(width);
    }];
    
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeButton setImage:[UIImage imageNamed:@"closeButton"] forState:UIControlStateNormal];
    [closeButton handleControlEvent:UIControlEventTouchUpInside withBlock:^{
        [bgView removeFromSuperview];
    }];
    [bgView addSubview:closeButton];
    [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(80);
        make.top.equalTo(bgImage).offset(-10);
        make.right.equalTo(bgImage).offset(20);
    }];
    
    UIImageView *delpin = [[UIImageView alloc]init];
    delpin.image = [UIImage imageNamed:@"cry_delpin"];
    [bgView addSubview:delpin];
    [delpin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(bgImage);
        make.height.mas_equalTo(70);
        make.width.mas_equalTo(100);
        make.left.equalTo(bgImage).offset(40);
    }];
    
    
    UILabel *content = [[UILabel alloc]init];
    content.text = info;
    content.font = kBlodFontScale(9);
    content.numberOfLines = 0;
    content.textColor = [UIColor colorWithHex:0x924F03];
    [bgView addSubview:content];
    [content mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(delpin);
        make.left.equalTo(delpin.mas_right).offset(10);
        make.right.equalTo(bgImage).offset(-20);
    }];
    
    
    
}


+ (void)showAfterClassErrorWithInfo:(NSString *)info{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UIView *tagView = [window viewWithTag:995];
    if (tagView) {
        return;
    }
    CGRect rect = [UIApplication sharedApplication].keyWindow.bounds;
    UIView *bgView = [[UIView alloc]initWithFrame:rect];
    bgView.tag = 995;
    bgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [[UIApplication sharedApplication].keyWindow addSubview:bgView];
    
    UIImageView *bgImage = [[UIImageView alloc]init];
    bgImage.image = [UIImage imageNamed:@"answerBgImage"];
    [bgView addSubview:bgImage];
    
    CGFloat width = kScreen_Height - 140;
    CGFloat height = width * (331. / 236.);
    [bgImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(bgView);
        make.centerY.equalTo(bgView);
        make.height.mas_equalTo(width);
        make.width.mas_equalTo(height);
    }];
    
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [closeButton setImage:[UIImage imageNamed:@"closeButton"] forState:UIControlStateNormal];
    [closeButton handleControlEvent:UIControlEventTouchUpInside withBlock:^{
        [self closeTap];
    }];
    [bgView addSubview:closeButton];
    [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(80);
        make.top.equalTo(bgImage).offset(-10);
        make.right.equalTo(bgImage).offset(20);
    }];
    
    UIImageView *delpin = [[UIImageView alloc]init];
    delpin.image = [UIImage imageNamed:@"cry_delpin"];
    [bgView addSubview:delpin];
    [delpin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(bgImage).offset(50);
        make.centerX.equalTo(bgImage);
        make.height.mas_equalTo(100);
        make.width.mas_equalTo(140);
    }];
    
    UIImageView *talk = [[UIImageView alloc]init];
    talk.image = [UIImage imageNamed:@"talkbgImage"];
    [bgView addSubview:talk];
    [talk mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(delpin.mas_bottom);
        make.height.mas_equalTo(70);
        make.width.mas_equalTo(width);
        make.centerX.equalTo(delpin);
    }];
    
    UILabel *contentLabel = [[UILabel alloc]init];
    contentLabel.text = info;
    [bgView addSubview:contentLabel];
    contentLabel.font = kBlodFontScale(9);
    contentLabel.numberOfLines = 0;
    contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.textColor = [UIColor colorWithHex:0xDC5810];
    [contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(talk).offset(10);
        make.left.equalTo(talk).offset(10);
        make.right.equalTo(talk).offset(-10);
        make.bottom.equalTo(talk).offset(-5);
    }];
    
}



+ (void)closeTap{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UIView *bgView = [window viewWithTag:995];
    [bgView removeFromSuperview];
}

@end
