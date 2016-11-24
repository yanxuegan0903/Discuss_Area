//
//  BaseNavigationController.m
//  测试不同NavigationControllerPush
//
//  Created by vsKing on 2016/11/23.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationBar.translucent = NO;
    self.navigationBar.tintColor = [UIColor grayColor];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor grayColor],NSFontAttributeName: [UIFont systemFontOfSize:19]};
    
    
    
    NSLog(@"frame = %@",NSStringFromCGRect(self.navigationBar.frame));
//    UIView * navigationBarView = [[UIView alloc]initWithFrame:self.navigationBar.frame];
//    navigationBarView.backgroundColor = [UIColor purpleColor];
//    [self.navigationBar addSubview:navigationBarView];
    
    
    
    
    
    
    
}

-(BOOL)shouldAutorotate
{
    return YES;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
