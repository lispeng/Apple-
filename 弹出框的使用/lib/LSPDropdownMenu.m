//
//  LSPDropdownMenu.m
//  微视界
//
//  Created by mac on 15-10-29.
//  Copyright (c) 2015年 Lispeng. All rights reserved.
//

#import "LSPDropdownMenu.h"
#import "UIView+Extension.h"
@interface LSPDropdownMenu()
@property (strong,nonatomic) UIImageView *containerView;
@end
@implementation LSPDropdownMenu

- (UIImageView *)containerView
{
    if (!_containerView) {
        _containerView = [[UIImageView alloc] init];
        
        _containerView.image = [UIImage imageNamed:@"popover_background"];
        [self addSubview:_containerView];
        
    }
    return _containerView;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
    }
    return self;
}

+ (instancetype)dropdownMenu
{
    return [[self alloc] init];
}

- (void)setContent:(UIView *)content
{
    _content = content;
    
    content.x = 10;
    content.y = 15;
    
    self.containerView.width = CGRectGetMaxX(content.frame) + 10;
    self.containerView.height = CGRectGetMaxY(content.frame)  + 10;
    [self.containerView addSubview:content];
    
}


- (void)showFrom:(UIView *)from
{
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    
    self.frame = window.bounds;
    
    [window addSubview:self];
    
    //转换坐标系
    CGRect newFrame = [from.superview convertRect:from.frame toView:window];
    
    self.containerView.centerX = CGRectGetMidX(newFrame);
    self.containerView.y = CGRectGetMaxY(newFrame);

}

- (void)setContentController:(UIViewController *)contentController
{
    _contentController = contentController;
    
    self.content = contentController.view;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self dismissDropdownMenu];
}

- (void)dismissDropdownMenu
{
    [self removeFromSuperview];
}
@end
