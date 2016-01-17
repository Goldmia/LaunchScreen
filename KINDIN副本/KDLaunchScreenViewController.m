//
//  KDLaunchScreenViewController.m
//  KINDIN
//
//  Created by mm on 1/17/16.
//  Copyright © 2016 KINDIN. All rights reserved.
//

#import "KDLaunchScreenViewController.h"
#import "KDBaseTabBarViewController.h"
@interface KDLaunchScreenViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *launchImageView;
@end

@implementation KDLaunchScreenViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.launchImageView.image = [UIImage imageNamed:@"guide_page_one.jpg"];
}

- (void)viewDidAppear:(BOOL)animated
{
   [UIView animateWithDuration:3 animations:^{
       CGAffineTransform newTransform =
       CGAffineTransformScale(self.launchImageView.transform, 1.2, 1.2);
       [self.launchImageView setTransform:newTransform];
   } completion:^(BOOL finished) {
       NSLog(@"donghuajiesu");
       KDBaseTabBarViewController *tabBarController = [[KDBaseTabBarViewController alloc]init];
       [self presentViewController:tabBarController animated:NO completion:^{
           
       }];
   }];
}

@end
