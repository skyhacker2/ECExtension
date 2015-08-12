//
//  ECAlignTestViewController.m
//  ECExtension
//
//  Created by Eleven Chen on 15/8/12.
//  Copyright (c) 2015年 Eleven Chen. All rights reserved.
//

#import "ECAlignTestViewController.h"
#import <ECExtension/ECExtension.h>

@interface ECAlignTestViewController ()

@end

@implementation ECAlignTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *view1 = [[UIView alloc] init];
    [self.view addSubview: view1];
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    view1.backgroundColor = [UIColor redColor];
    [view1 constraintSize:CGSizeMake(50, 50)];
    [view1 centerInSuperView];
    
    // 在view1 的上边
    UIView* view2 = [[UIView alloc] init];
    [self.view addSubview:view2];
    view2.translatesAutoresizingMaskIntoConstraints = NO;
    view2.backgroundColor = [UIColor yellowColor];
    [view2 alignLeftTo:view1];
    [view2 constraintSize:CGSizeMake(50, 50)];
    [view2 topTo:view1 distance:20];
    
    // 在view1 的左边
    UIView* view3 = [[UIView alloc] init];
    [self.view addSubview:view3];
    view3.translatesAutoresizingMaskIntoConstraints = NO;
    view3.backgroundColor = [UIColor grayColor];
    [view3 constraintSize:CGSizeMake(50, 50)];
    [view3 leftTo:view1 distance:20];
    [view3 alignTopTo:view1];
    
    // 在view1的右边
    UIView* view4 = [[UIView alloc] init];
    [self.view addSubview:view4];
    view4.translatesAutoresizingMaskIntoConstraints = NO;
    view4.backgroundColor = [UIColor greenColor];
    [view4 constraintSize:CGSizeMake(50, 50)];
    [view4 rightTo:view1 distance:20];
    [view4 alignTopTo:view1];
    
    // 在view1的下边
    UIView* view5 = [[UIView alloc] init];
    [self.view addSubview:view5];
    view5.translatesAutoresizingMaskIntoConstraints = NO;
    view5.backgroundColor = [UIColor blueColor];
    [view5 constraintSize:CGSizeMake(50, 50)];
    [view5 bottomTo:view1 distance:20];
    [view5 alignLeftTo:view1];
    
    UIImage* image = [UIImage imageNamed:@"Circle.png"];
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image];
    imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:imageView1];
    [imageView1 topTo:view2 distance:20];
    [imageView1 centerXInSuperView];
    NSLog(@"%f %f", imageView1.bounds.size.width, imageView1.bounds.size.height);
    
    UIImage* image2 = [image scaleImage:0.5];
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image2];
    imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:imageView2];
    [imageView2 topTo:imageView1 distance:20];
    [imageView2 centerXInSuperView];
    NSLog(@"%f %f", imageView2.bounds.size.width, imageView2.bounds.size.height);
    
    UIImage* image3 = [[UIImage imageNamed:@"Light.png"] changeColor:[UIColor greenColor]];
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:image3];
    imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:imageView3];
    [imageView3 topTo:imageView2 distance:20];
    [imageView3 centerXInSuperView];
    NSLog(@"%f %f", imageView2.bounds.size.width, imageView2.bounds.size.height);
    
}


@end
