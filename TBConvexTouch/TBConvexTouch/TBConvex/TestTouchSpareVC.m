//
//  TestTouchSpareVC.m
//  com.pintu.aaaaaa
//
//  Created by hanchuangkeji on 2017/9/4.
//  Copyright © 2017年 hanchuangkeji. All rights reserved.
//

#import "TestTouchSpareVC.h"
#import "UIView+FOFExtension.h"
#import "Touch1View.h"
#import "Touch2View.h"
#import "Touch3View.h"


@interface TestTouchSpareVC ()

@property (nonatomic, assign)CGPoint point;


@end

@implementation TestTouchSpareVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self prepare];
}

- (void)prepare {
    
    Touch1View *view1 = [[Touch1View alloc] init];
    view1.frame = CGRectMake(0, self.view.height - 49, self.view.width, 49);
    view1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view1];
    [view1 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(getstureTouch1)]];
    
    Touch2View *view2 = [[Touch2View alloc] init];
    view2.frame = CGRectMake((view1.width - 50) * 0.5, -49 * 0.25, 49, 49);
    view2.backgroundColor = [UIColor purpleColor];
    [view1 addSubview:view2];
    view2.clipsToBounds = YES;
    view2.layer.cornerRadius = view2.height * 0.5;
    [view2 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(getstureTouch2)]];
}

- (void)getstureTouch1 {
    NSLog(@"%s", __func__);
}

- (void)getstureTouch2 {
    NSLog(@"%s", __func__);
}


@end
