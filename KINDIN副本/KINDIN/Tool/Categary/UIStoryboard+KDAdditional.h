//
//  UIStoryboard+KDAdditional.h
//  KINDIN
//
//  Created by LOW on 16/1/6.
//  Copyright © 2016年 王雪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (KDAdditional)
+ (instancetype)storyboardWithClass:(Class)cls;
+ (instancetype)storyboardWithClassName:(NSString *)className;
@end
