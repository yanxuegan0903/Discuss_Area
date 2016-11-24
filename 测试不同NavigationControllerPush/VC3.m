//
//  VC3.m
//  测试不同NavigationControllerPush
//
//  Created by changle on 2016/11/24.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "VC3.h"

@interface VC3 ()<UIGestureRecognizerDelegate>

@end

@implementation VC3

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    
    self.view.backgroundColor = [UIColor greenColor];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //    [self.navigationController setNavigationBarHidden:YES];
    //    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
    //    self.navigationController.interactivePopGestureRecognizer.delegate =  self;
    [self.navigationItem setHidesBackButton:YES];
    [self.navigationItem.backBarButtonItem setTitle:@""];
    [self.navigationItem setBackBarButtonItem:nil];

    
    self.navigationController.navigationBar.translucent = YES;
    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, 64);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor)
    ;
    CGContextFillRect(context, rect);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (self.navigationController.viewControllers.count <= 1 ) {
        return NO;
    }
    
    return YES;
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
