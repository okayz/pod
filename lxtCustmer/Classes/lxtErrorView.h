//
//  StuErrorView.h
//  StuClient
//
//  Created by microlanguage on 2018/9/21.
//  Copyright © 2018年 lexuetong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StuErrorView : NSObject

/**
 网络错误 无信息提示窗
 */
+ (void)showErrorWithInfo:(NSString *)info;


/**
 课后作业提示
 */
+ (void)showAfterClassErrorWithInfo:(NSString *)info;
@end
