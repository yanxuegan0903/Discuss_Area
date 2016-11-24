//
//  VC2.m
//  测试不同NavigationControllerPush
//
//  Created by vsKing on 2016/11/23.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "VC2.h"
#import "VC3.h"



@interface VC2 ()<UIGestureRecognizerDelegate>

@end

@implementation VC2

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self.navigationController setNavigationBarHidden:YES animated:YES];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 100, 45)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"第二个页面" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
}

-(void)clickBtn
{
    VC3 * vc = [VC3 new];
    [self.navigationController pushViewController:vc animated:YES];
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (self.navigationController.viewControllers.count <= 1 ) {
        return NO;
    }
    
    return YES;
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
