//
//  UIColor+KDAdditional.m
//  KINDIN
//
//  Created by LOW on 16/1/6.
//  Copyright © 2016年 王雪. All rights reserved.
//

#import "UIColor+KDAdditional.h"

@implementation UIColor (KDAdditional)
+ (UIColor *)colorwithString:(NSString *)colorString
{
    return [self colorwithString:colorString colorAlpha:1];
}

+ (UIColor *)colorwithString:(NSString *)colorString colorAlpha:(float)alpha
{
    colorString = [colorString hasPrefix:@"#"] ? [colorString substringFromIndex:1] : colorString;
    UIColor *result = nil;
    unsigned colorCode = 0;
    unichar redByte, greenByte, blueByte;
    if (nil != colorString)
    {
        NSScanner *scanner = [NSScanner scannerWithString:colorString];
        (void) [scanner scanHexInt:&colorCode]; // ignore error
    }
    redByte = (unsigned char) (colorCode >> 16);
    greenByte = (unsigned char) (colorCode >> 8);
    blueByte = (unsigned char) (colorCode); // masks off high bits
    result = [UIColor
              colorWithRed: (float)redByte / 0xff
              green: (float)greenByte/ 0xff
              blue: (float)blueByte / 0xff
              alpha:alpha];
    return result;
}
@end
