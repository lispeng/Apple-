//
//  LSPDropdownMenu.h
//  微视界
//
//  Created by mac on 15-10-29.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import <UIKit/UIKit.h>
/*** 先设置内容尺寸等在使用**/
@interface LSPDropdownMenu : UIView
/**
 *  获取下拉菜单
 *
 *
 */
+ (instancetype)dropdownMenu;
/**
 *  显示
 *
 *
 */
- (void)showFrom:(UIView *)from;
/**
 *  移除下拉菜单
 */
- (void)dismissDropdownMenu;
/**
 *  设置内容为UIView
 */
@property (strong,nonatomic) UIView *content;
/**
 *  设置内容为控制器
 */
@property (strong,nonatomic) UIViewController *contentController;

@end
