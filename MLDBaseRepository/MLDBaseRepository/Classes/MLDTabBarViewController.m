//
//  MLDTabBarViewController.m
//  MLDBaseRepository
//
//  Created by Moliy on 2017/3/21.
//  Copyright © 2017年 Moliy. All rights reserved.
//

#import "MLDTabBarViewController.h"
#import "RDVTabBarItem.h"
#import "SXColorGradientView.h"
#import "UIColor+Wonderful.h"

@interface MLDTabBarViewController ()<RDVTabBarControllerDelegate>

@end

@implementation MLDTabBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.delegate = self;
    [self setupViewControllers];
    [self setupTabBar];
}

- (void)setupViewControllers
{
    UIStoryboard *storyboard1 = [UIStoryboard storyboardWithName:@"First"
                                                          bundle:nil];
    UINavigationController *firstVC = [storyboard1 instantiateViewControllerWithIdentifier:@"FirstVC"];
    UIStoryboard *storyboard2 = [UIStoryboard storyboardWithName:@"Second"
                                                          bundle:nil];
    UINavigationController *secondVC = [storyboard2 instantiateViewControllerWithIdentifier:@"SecondVC"];
    UIStoryboard *storyboard3 = [UIStoryboard storyboardWithName:@"Third"
                                                          bundle:nil];
    UINavigationController *thirdVC = [storyboard3 instantiateViewControllerWithIdentifier:@"ThirdVC"];
    [self setViewControllers:@[firstVC,
                               secondVC,
                               thirdVC]];
}

- (void)setupTabBar
{
    //    tabbar 背景图片 tabbar_background
    UIImage *backgroundImage;
    //    选项卡图片
    NSArray *tabBarItemImages = @[@"mail",
                                  @"shop",
                                  @"girl"];
    NSArray *tabBarItemTitles = @[@"信息",
                                  @"商城",
                                  @"我的"];
    [self.tabBar.items enumerateObjectsUsingBlock:^(RDVTabBarItem *item, NSUInteger index, BOOL * _Nonnull stop)
     {
         item.titlePositionAdjustment = UIOffsetMake(0, 2.0);
         [item setBackgroundSelectedImage:backgroundImage
                      withUnselectedImage:backgroundImage];
         UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[tabBarItemImages objectAtIndex:index]]];
         UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[tabBarItemImages objectAtIndex:index]]];
         [item setFinishedSelectedImage:selectedimage
            withFinishedUnselectedImage:unselectedimage];
         [item setTitle:[tabBarItemTitles objectAtIndex:index]];
         item.selectedTitleAttributes = @{
                                          NSFontAttributeName: [UIFont boldSystemFontOfSize:10],
                                          NSForegroundColorAttributeName:[UIColor blackColor]
                                          };
         item.unselectedTitleAttributes = @{
                                            NSFontAttributeName: [UIFont boldSystemFontOfSize:8],
                                            NSForegroundColorAttributeName:[UIColor grayColor]
                                            };
     }];
    self.tabBar.backgroundView.backgroundColor = [UIColor whiteSmoke];
    [self.tabBar.backgroundView addSubview:[self createGradientView]];
}



- (BOOL)tabBarController:(UITabBarController *)tabBarController
shouldSelectViewController:(UIViewController *)viewController
{
    [self itemAnimation:viewController.rdv_tabBarItem];
    return YES;
}

- (void)itemAnimation:(UIView *)view
{
    CABasicAnimation*pulse = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulse.timingFunction= [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    pulse.duration = 0.1;
    pulse.repeatCount= 1;
    pulse.autoreverses= YES;
    pulse.fromValue= [NSNumber numberWithFloat:0.8];
    pulse.toValue= [NSNumber numberWithFloat:1];
    [[view layer] addAnimation:pulse
                        forKey:nil];
}

- (UIView *)createGradientView
{
    SXColorGradientView *gradientView = [SXColorGradientView createWithColor:[UIColor whiteSmoke]
                                                                       frame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 3)
                                                                   direction:SXGradientToTop];
    return gradientView;
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
