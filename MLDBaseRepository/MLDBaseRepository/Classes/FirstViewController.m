//
//  FirstViewController.m
//  MLDBaseRepository
//
//  Created by Moliy on 2017/3/22.
//  Copyright © 2017年 Moliy. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (strong, nonatomic) IBOutlet UIButton *button;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button.layer.cornerRadius = 5;
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
