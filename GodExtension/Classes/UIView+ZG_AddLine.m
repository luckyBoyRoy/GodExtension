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

static NSInteger const ZG_AddLineViewTopLineViewTag = 99991;

static NSInteger const ZG_AddLineViewBottomLineViewTag = 100001;

@implementation UIView (ZG_AddLine)

- (UIView *)findLineView:(NSInteger)tag{
    UIView *resultView = nil;
    for (UIView *aView in [self subviews]) {
        if (aView.tag == tag) {
            resultView = aView;
            break;
        }
    }
    if (!resultView) {
        resultView = [[UIView alloc]init];
        resultView.backgroundColor = ZG_GLAY_COLOR;
        resultView.tag = tag;
    }
    
    return resultView;
}

- (NSInteger)lineViewTagByIsUp:(BOOL)isUp
{
    if (isUp) {
        return ZG_AddLineViewTopLineViewTag;
    } else {
        return ZG_AddLineViewBottomLineViewTag;
    }
}

- (void)zg_AddLineIsUp:(BOOL)isUp
            LeftMargin:(CGFloat)leftMargin
           RightMargin:(CGFloat)rightMargin
{
    WS(weakSelf);
    UIView *lineView = [self findLineView:[self lineViewTagByIsUp:isUp]];
    [self addSubview:lineView];
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
    UIView *lineView = [self findLineView:[self lineViewTagByIsUp:isUp]];
    [self addSubview:lineView];
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

- (void)zg_removeLineIsUp:(BOOL)isUp
{
    UIView *lineView = [self findLineView:[self lineViewTagByIsUp:isUp]];
    if (lineView) {
        [lineView removeFromSuperview];
    }
}

@end
