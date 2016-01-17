//
//  UIColor+KDAdditional.h
//  KINDIN
//
//  Created by LOW on 16/1/6.
//  Copyright © 2016年 王雪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (KDAdditional)
/**
 *  设置颜色
 *
 *  @param colorString 颜色值 @"ff0000" 或 @"#ff0000"
 *
 *  @return 返回设定的颜色值
 */
+ (UIColor *)colorwithString:(NSString *)colorString;

/**
 *  设置颜色
 *
 *  @param colorString 颜色值 @"ff0000" 或 @"#ff0000"
 *  @param alpha       颜色的透明度  0.5
 *
 *  @return 返回设定的颜色值
 */
+ (UIColor *)colorwithString:(NSString *)colorString colorAlpha:(float)alpha;
@end
