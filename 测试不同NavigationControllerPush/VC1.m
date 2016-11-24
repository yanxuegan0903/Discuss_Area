//
//  VC1.m
//  测试不同NavigationControllerPush
//
//  Created by vsKing on 2016/11/23.
//  Copyright © 2016年 vsKing. All rights reserved.
//

#import "VC1.h"
#import "VC2.h"



@interface VC1 ()

@end

@implementation VC1


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    

    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 100, 45)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"第一个页面" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
}

- (void)clickBtn
{
    VC2 * vc2 = [VC2 new];
    [self.navigationController pushViewController:vc2 animated:YES];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
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
