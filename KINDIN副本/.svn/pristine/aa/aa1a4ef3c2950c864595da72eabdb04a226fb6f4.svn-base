//
//  KDBaseTabBarViewController.m
//  KINDIN
//
//  Created by 王雪 on 16/1/6.
//  Copyright © 2016年 王雪. All rights reserved.
//


#import "KDBaseTabBarViewController.h"
#import "KDHomeViewController.h"
#import "KDGongLueViewController.h"
#import "KDScenicViewController.h"
#import "KDSwimFreeViewController.h"
#import "KDMineViewController.h"


@interface KDBaseTabBarViewController ()

@end

@implementation KDBaseTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupChildViewControllers];
}

-(void)setupChildViewControllers
{
    KDHomeViewController *home = [[KDHomeViewController alloc]init];
    [self addChildViewControllerWithImage:@"主页" title:@"首页" vc:home selectImage:@"主页选中状态"];

    KDGongLueViewController *gonglue = [[KDGongLueViewController alloc]init];
    [self addChildViewControllerWithImage:@"攻略" title:@"攻略" vc:gonglue selectImage:@"攻略-选中状态"];
    
    KDScenicViewController *scenic = [[KDScenicViewController alloc]init];
    [self addChildViewControllerWithImage:@"预订" title:@"景点" vc:scenic selectImage:@"预订选中状态"];
    
    
    KDSwimFreeViewController *swimFree = [[KDSwimFreeViewController alloc]init];
    [self addChildViewControllerWithImage:@"约游" title:@"约游" vc:swimFree selectImage:@"约游选中状态"];
    
    
    KDMineViewController *mine = [[KDMineViewController alloc]init];
    [self addChildViewControllerWithImage:@"我的" title:@"我的" vc:mine selectImage:@"我的-选中状态"];
    
//    self.selectedIndex = 1;
}

-(void)addChildViewControllerWithImage:(NSString *)imageName title:(NSString *)title vc:(UIViewController *)vc selectImage:(NSString *)selectImageName
{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    nav.tabBarItem.title = title;
    nav.tabBarItem.imageInsets = UIEdgeInsetsMake(-2, 0, 2, 0);
    [nav.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -2)];
    [self selectedTapTabBarItems:nav.tabBarItem];
    [self unSelectedTapTabBarItems:nav.tabBarItem];
    nav.tabBarItem.image = [[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIImage * normalImage =nil;
    UIImage * selectImage =nil;
    
    if(IOS7)
    {
        normalImage = [[UIImage imageNamed:imageName]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        selectImage = [[UIImage imageNamed:selectImageName]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
    }
    else{
        normalImage = [UIImage imageNamed:imageName];
        selectImage = [UIImage imageNamed:selectImageName];
    }

    [self addChildViewController:nav];
    
}
//tabBar 设置
-(void)selectedTapTabBarItems:(UITabBarItem *)tabBarItem
{
    [tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                        [UIFont systemFontOfSize:12],
                                        NSFontAttributeName,[UIColor colorwithString:@"#15b28a"],NSForegroundColorAttributeName,
                                        nil] forState:UIControlStateSelected];
}
-(void)unSelectedTapTabBarItems:(UITabBarItem *)tabBarItem
{
    [tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                        [UIFont systemFontOfSize:12], NSFontAttributeName,[UIColor grayColor],NSForegroundColorAttributeName,
                                        nil] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
