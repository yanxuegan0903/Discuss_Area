//
//  VC3.m
//  测试不同NavigationControllerPush
//
//  Created by vsKing on 2016/11/24.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "VC3.h"

@interface VC3 ()

@end

@implementation VC3

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.barTintColor = [UIColor grayColor];
    
    
    
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 100, 45)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor whiteColor];
//    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"第三个页面" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
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
