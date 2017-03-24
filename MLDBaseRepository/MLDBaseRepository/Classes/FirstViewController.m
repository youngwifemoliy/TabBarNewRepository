//
//  FirstViewController.m
//  MLDBaseRepository
//
//  Created by Moliy on 2017/3/23.
//  Copyright © 2017年 Moliy. All rights reserved.
//

#import "FirstViewController.h"
#import "MLDPhotoManager.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)photoClick:(UIButton *)sender
{
    [MLDPhotoManager showPhotoManager:sender
                      withCameraImage:^(UIImage *cameraImage)
     {
         NSLog(@"cameraImage==%@",cameraImage);
     }
                       withAlbumArray:^(NSArray *albumArray)
    {
        NSLog(@"albumArray===%@",albumArray);
    }];
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
