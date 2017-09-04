//
//  Touch1View.m
//  com.pintu.aaaaaa
//
//  Created by hanchuangkeji on 2017/9/4.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
//

#import "Touch3View.h"

@implementation Touch3View

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s -- %@ -- %@", __func__, NSStringFromCGPoint(point), event);
    return [super hitTest:point withEvent:event];
}



- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s -- %@ -- %@", __func__, NSStringFromCGPoint(point), event);
    return [super pointInside:point withEvent:event];
}

@end
