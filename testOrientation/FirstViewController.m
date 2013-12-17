//
//  FirstViewController.m
//  testOrientation
//
//  Created by Francesc on 03/12/13.
//  Copyright (c) 2013 francesctovar. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
	return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
	//	(iOS 6)
	//	Only allow rotation to portrait
	return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
	//	(iOS 6)
	//	Force to portrait
	return UIInterfaceOrientationPortrait;
}


@end
