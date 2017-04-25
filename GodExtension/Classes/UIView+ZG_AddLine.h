//
//  UIView+ZG_AddLine.h
//  Pods
//
//  Created by luckyRoy on 2017/4/25.
//
//

#import <UIKit/UIKit.h>

@interface UIView (ZG_AddLine)
/*
 default line color is gray
 */
- (void)zg_AddLineIsUp:(BOOL)isUp
            LeftMargin:(CGFloat)leftMargin
           RightMargin:(CGFloat)rightMargin;

- (void)zg_addLineIsUp:(BOOL)isUp
                 Color:(UIColor *)customColor
            LeftMargin:(CGFloat)leftMargin
           RightMargin:(CGFloat)rightMargin;

- (void)zg_removeLineIsUp:(BOOL)isUp;

@end
