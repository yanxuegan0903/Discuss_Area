//
//  VC2.m
//  测试不同NavigationControllerPush
//
//  Created by vsKing on 2016/11/23.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "RY_SecondViewController.h"

@interface RY_SecondViewController ()<UIGestureRecognizerDelegate>

@end

@implementation RY_SecondViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.title = @"Second";
    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
