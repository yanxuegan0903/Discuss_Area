//
//  BaseNavigationController.m
//  测试不同NavigationControllerPush
//
//  Created by vsKing on 2016/11/23.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation BaseNavigationController


- (void)dealloc
{
    self.interactivePopGestureRecognizer.delegate = nil;
    self.delegate = nil;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationBar.translucent = NO;
    self.navigationBar.tintColor = [UIColor grayColor];
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor grayColor],NSFontAttributeName: [UIFont systemFontOfSize:19]};
    
    
    
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.delegate = self;
        self.delegate = self;
    }
    
    
}


#pragma mark - Override
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    // Hijack the push method to disable the gesture
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    [super pushViewController:viewController animated:animated];
}

#pragma mark - UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController
       didShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animate
{
    if ([navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        if ([navigationController.viewControllers count] == 1) {
            // Disable the interactive pop gesture in the rootViewController of navigationController
            navigationController.interactivePopGestureRecognizer.enabled = NO;
        } else {
            // Enable the interactive pop gesture
            navigationController.interactivePopGestureRecognizer.enabled = YES;
        }
    }
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
