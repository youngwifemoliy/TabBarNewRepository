//
//  MLDBaseTableViewCell.m
//  FootballApp
//
//  Created by Moliy on 2017/2/16.
//  Copyright © 2017年 North. All rights reserved.
//

#import "MLDBaseTableViewCell.h"
#import <POP/POP.h>

@implementation MLDBaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected
           animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted
                 animated:animated];
    if (self.highlighted)
    {
        POPBasicAnimation *scaleAnimation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        scaleAnimation.duration = 0.1;
        scaleAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(0.95, 0.95)];
        [self pop_addAnimation:scaleAnimation
                                  forKey:@"scaleAnimation"];
    }
    else
    {
        POPSpringAnimation *scaleAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        scaleAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
        scaleAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(2, 2)];
        scaleAnimation.springBounciness = 10.f;
        [self pop_addAnimation:scaleAnimation
                        forKey:@"scaleAnimation"];
    }
}

@end
