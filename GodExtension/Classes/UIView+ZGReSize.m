//
//  UIView+ZGReSize.m
//  Pods
//
//  Created by luckyRoy on 2017/4/25.
//
//

#import "UIView+ZGReSize.h"

@implementation UIView (ZGReSize)

- (CGSize)zg_size;
{
    return [self frame].size;
}

- (void)setZg_size:(CGSize)zg_size
{
    CGPoint origin = [self frame].origin;
    [self setFrame:CGRectMake(origin.x, origin.y, zg_size.width, zg_size.height)];
}

-(CGFloat)zg_x{
    CGRect frame=[self frame];
    return frame.origin.x;
}

- (void)setZg_x:(CGFloat)zg_x
{
    CGRect frame=[self frame];
    frame.origin.x=zg_x;
    [self setFrame:frame];
}

-(CGFloat)zg_y{
    CGRect frame=[self frame];
    return frame.origin.y;
}

-(void)setZg_y:(CGFloat)y{
    CGRect frame=[self frame];
    frame.origin.y=y;
    return [self setFrame:frame];
}

- (CGFloat)zg_left;
{
    return CGRectGetMinX([self frame]);
}

- (void)setZg_left:(CGFloat)x;
{
    CGRect frame = [self frame];
    frame.origin.x = x;
    [self setFrame:frame];
}

- (CGFloat)zg_top;
{
    return CGRectGetMinY([self frame]);
}

- (void)setZg_top:(CGFloat)y;
{
    CGRect frame = [self frame];
    frame.origin.y = y;
    [self setFrame:frame];
}

- (CGFloat)zg_right;
{
    return CGRectGetMaxX([self frame]);
}

- (void)setZg_right:(CGFloat)right;
{
    CGRect frame = [self frame];
    frame.origin.x = right - frame.size.width;
    
    [self setFrame:frame];
}

- (CGFloat)zg_bottom;
{
    return CGRectGetMaxY([self frame]);
}

- (void)setZg_bottom:(CGFloat)bottom;
{
    CGRect frame = [self frame];
    frame.origin.y = bottom - frame.size.height;
    [self setFrame:frame];
}

- (CGFloat)zg_centerX;
{
    return [self center].x;
}

- (void)setZg_centerX:(CGFloat)centerX;
{
    [self setCenter:CGPointMake(centerX, self.center.y)];
}

- (CGFloat)zg_centerY;
{
    return [self center].y;
}

- (void)setZg_centerY:(CGFloat)centerY;
{
    [self setCenter:CGPointMake(self.center.x, centerY)];
}

- (CGFloat)zg_width;
{
    return CGRectGetWidth([self frame]);
}

- (void)setZg_width:(CGFloat)width;
{
    CGRect frame = [self frame];
    frame.size.width = width;
    [self setFrame:CGRectStandardize(frame)];
}

- (CGFloat)zg_height;
{
    return CGRectGetHeight([self frame]);
}

- (void)setZg_height:(CGFloat)height;
{
    CGRect frame=[self frame];
    frame.size.height = height;
    [self setFrame:CGRectStandardize(frame)];
}

@end
