//
//  MyTabViewController.m
//  testOrientation
//
//  Created by Francesc on 03/12/13.
//  Copyright (c) 2013 francesctovar. All rights reserved.
//

#import "MyTabViewController.h"
#import "SecondViewController.h"
#import "FirstViewController.h"

@interface MyTabViewController ()

@end

@implementation MyTabViewController

BOOL rotable;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    rotable = true;
    NSLog(@"Rotable");
	// Do any additional setup after loading the view.
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    [self.tabBarController reloadInputViews];
    
    UIViewController *view = self.selectedViewController;
    if ([view isKindOfClass:[SecondViewController class]]) {
        NSLog(@"Segundo");
        rotable = YES;
    } else {
        NSLog(@"Primero");
        rotable = NO;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
	//	(iOS 6)
	//	No auto rotating
    NSLog(@"rotable %i", rotable);
	if (rotable) {
        return YES;
    } else {
        return NO;
    }
}

- (NSUInteger)supportedInterfaceOrientations
{
	//	(iOS 6)
	//	Only allow rotation to portrait
    NSLog(@"rotable %i", rotable);
    if (rotable) {
        return UIInterfaceOrientationMaskAll;
    } else {
        return UIInterfaceOrientationPortrait;
    }
    
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
	//	(iOS 6)
	//	Force to portrait
	return UIInterfaceOrientationPortrait;
}

@end
