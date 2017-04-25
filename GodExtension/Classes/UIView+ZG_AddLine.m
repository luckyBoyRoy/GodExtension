//
//  UIView+ZG_AddLine.m
//  Pods
//
//  Created by luckyRoy on 2017/4/25.
//
//

#import "UIView+ZG_AddLine.h"
#import "ZGMacro.h"
#import "Masonry.h"

static NSInteger const ZG_AddLineViewTag = 100;

@implementation UIView (ZG_AddLine)

- (void)removeViewWithTag:(NSInteger)tag{
    for (UIView *aView in [self subviews]) {
        if (aView.tag == tag) {
            [aView removeFromSuperview];
        }
    }
}

- (void)zg_AddLineIsUp:(BOOL)isUp
            LeftMargin:(CGFloat)leftMargin
           RightMargin:(CGFloat)rightMargin
{
    WS(weakSelf);
    [self removeViewWithTag:ZG_AddLineViewTag];
    UIView *lineView = [[UIView alloc]init];
    [self addSubview:lineView];
    lineView.tag = ZG_AddLineViewTag;
    
    lineView.backgroundColor = ZG_GLAY_COLOR;
    if (isUp) {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(weakSelf);
            make.left.mas_equalTo(weakSelf).offset(leftMargin);
            make.right.mas_equalTo(weakSelf).offset(-rightMargin);
            make.height.mas_equalTo(1);
        }];
    } else {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(weakSelf);
            make.left.mas_equalTo(weakSelf).offset(leftMargin);
            make.right.mas_equalTo(weakSelf).offset(-rightMargin);
            make.height.mas_equalTo(1);
        }];
    }
}

- (void)zg_addLineIsUp:(BOOL)isUp
                 Color:(UIColor *)customColor
            LeftMargin:(CGFloat)leftMargin
           RightMargin:(CGFloat)rightMargin
{
    WS(weakSelf);
    [self removeViewWithTag:ZG_AddLineViewTag];
    UIView *lineView = [[UIView alloc]init];
    [self addSubview:lineView];
    lineView.tag = ZG_AddLineViewTag;
    if (customColor) {
        lineView.backgroundColor = customColor;
    } else {
        lineView.backgroundColor = ZG_GLAY_COLOR;
    }
    if (isUp) {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(weakSelf);
            make.left.mas_equalTo(weakSelf).offset(leftMargin);
            make.right.mas_equalTo(weakSelf).offset(-rightMargin);
            make.height.mas_equalTo(1);
        }];
    } else {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(weakSelf);
            make.left.mas_equalTo(weakSelf).offset(leftMargin);
            make.right.mas_equalTo(weakSelf).offset(-rightMargin);
            make.height.mas_equalTo(1);
        }];
    }
}

@end
