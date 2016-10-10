//
//  ViewController.m
//  UniteDemo
//
//  Created by 搜影科技 on 16/10/9.
//  Copyright © 2016年 cl. All rights reserved.
//

#import "ViewController.h"
#import "XPSummary.h"
#import "XPAppUnitModel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [XPSummary startSln:^(NSString *ipStr, NSString *macStr) {
        NSLog(@"%@----%@",ipStr,macStr);
    }];
    
    NSArray *array = [XPSummary appUnitArray];
    for (XPAppUnitModel *mo in array) {
        NSLog(@"%@－－－－－%@",mo.iName,mo.bExecutable);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
