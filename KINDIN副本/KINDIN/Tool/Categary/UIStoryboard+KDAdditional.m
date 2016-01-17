//
//  UIStoryboard+KDAdditional.m
//  KINDIN
//
//  Created by LOW on 16/1/6.
//  Copyright © 2016年 王雪. All rights reserved.
//

#import "UIStoryboard+KDAdditional.h"

@implementation UIStoryboard (KDAdditional)
+ (instancetype)storyboardWithClassName:(NSString *)className
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:className bundle:nil];
    return sb;
}

+ (instancetype)storyboardWithClass:(Class)cls
{
    UIStoryboard *sb = [UIStoryboard storyboardWithClassName:NSStringFromClass(cls)];
    return sb;
}
@end
