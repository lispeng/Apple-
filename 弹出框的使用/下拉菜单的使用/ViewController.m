//
//  ViewController.m
//  下拉菜单的使用
//
//  Created by mac on 15-10-29.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Extension.h"
#import "LSPDropdownMenu.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.width = 30;
    btn.height = 20;
    btn.x = 100;
    btn.y = 100;
    
    btn.backgroundColor = [UIColor blueColor];
    
    //监听按钮的点击
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
//下拉菜单的使用，点击按钮弹出下拉菜单
- (void)btnClick:(UIButton *)btn
{
    
    //创建下拉菜单
    LSPDropdownMenu *menu = [LSPDropdownMenu dropdownMenu];
    
    //设置下来菜单里面有什么内容（比如你可以设置各种控件……）
    
    UITableView *tableView = [[UITableView alloc] init];
    //设置控件的frame
    tableView.width = 160;
    tableView.height = 300;
    
    //下拉菜单内容的设置方法
    menu.content = tableView;
    
    
    //显示下拉菜单
    [menu showFrom:btn];
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
