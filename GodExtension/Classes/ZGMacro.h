//
//  ZGMacro.h
//  Pods
//
//  Created by luckyRoy on 2017/4/25.
//
//

#ifndef ZGMacro_h
#define ZGMacro_h

#pragma mark - color

#define ZGCOLOR(a,b,c) [UIColor colorWithRed:(a)/255.0 green:(b)/255.0 blue:(c)/255.0 alpha:1]

#define ZG_GLAY_COLOR  ZGCOLOR(243, 244, 245)

#pragma mark - reference

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self

#define ZG_SCREEN_W      [[UIScreen mainScreen] bounds].size.width

#define ZG_SCREEN_H      [[UIScreen mainScreen] bounds].size.height

#endif /* ZGMacro_h */
