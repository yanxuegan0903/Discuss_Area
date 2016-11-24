//
//  VC2.m
//  测试不同NavigationControllerPush
//
//  Created by vsKing on 2016/11/23.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "RY_SecondViewController.h"
#import "RY_ThirdViewController.h"

@interface RY_SecondViewController ()<UIGestureRecognizerDelegate>

@end

@implementation RY_SecondViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.title = @"Second";
    
    //add button
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 80, 45)];
    [self.view addSubview:btn];
    
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"点我啊" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
        [self.navigationController setNavigationBarHidden:false];
    //    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    //    self.navigationController.interactivePopGestureRecognizer.delegate =  self;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (self.navigationController.viewControllers.count <= 1 )
    {
        return NO;
    }
    
    return YES;
}


-(void)clickBtn
{
    [self.navigationController pushViewController:[RY_ThirdViewController new] animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
