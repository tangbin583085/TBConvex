//
//  Touch1View.m
//  com.pintu.aaaaaa
//
//  Created by hanchuangkeji on 2017/9/4.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
//

#import "Touch1View.h"
#import "UIView+FOFExtension.h"

@implementation Touch1View


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"%s -- %@ -- %@", __func__, NSStringFromCGPoint(point), event);
    return [super hitTest:point withEvent:event];
}



/**
 重写点击区域

 @param point 点击点
 @param event 点击事件
 @return 返回布尔值
 */
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    
    // 默认为真直接返回
    BOOL inside = [super pointInside:point withEvent:event];
    if (inside) {
        return inside;
    }
    
    // 遍历所有子控件
    for (UIView *subView in self.subviews) {
        
        // 转换point坐标系
        CGPoint subViewPoint = [subView convertPoint:point fromView:self];
        // 如果点击区域落在子控件上
        if ([subView pointInside:subViewPoint withEvent:event]) {
            return YES;
        }
    }
    
    return NO;
}


// 这个方法是上网找的，异曲同工
//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
//{
//    // 先使用默认的方法来寻找 hit-TestView
//    UIView *result = [super hitTest:point withEvent:event];
//    // 如果 result 不为 nil，说明触摸事件发生在 tabbar 里面，直接返回就可以了
//    if (result) {
//        return result;
//    }
//    // 到这里说明触摸事件不发生在 tabBar 里面
//    // 这里遍历那些超出的部分就可以了，不过这么写比较通用。
//    for (UIView *subview in self.subviews) {
//        // 把这个坐标从tabbar的坐标系转为subview的坐标系
//        CGPoint subPoint = [subview convertPoint:point fromView:self];
//        result = [subview hitTest:subPoint withEvent:event];
//        // 如果事件发生在subView里就返回
//        if (result) {
//            return result;
//        }
//    }
//    return nil;
//}




@end
