//
//  RY_ThirdViewController.m
//  测试不同NavigationControllerPush
//
//  Created by YueWen on 2016/11/24.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "RY_ThirdViewController.h"

@interface RY_ThirdViewController ()

@end

@implementation RY_ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"Back Second Please";
    self.view.backgroundColor = [UIColor yellowColor];
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
