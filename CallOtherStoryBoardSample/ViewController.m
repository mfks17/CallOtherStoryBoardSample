//
//  ViewController.m
//  CallOtherStoryBoardSample
//
//  Created by mfks17 on 7/1/12.
//  Copyright (c) 2012 mfks17 <mfks17@gmail.com>. All rights reserved.
//

#import "ViewController.h"
#import "Sub1Scene1ViewController.h"
#import "Sub1Scene2ViewController.h"
#import "Sub2Scene1ViewController.h"
#import "Sub2Scene2ViewController.h"
#import "UIViewController+UIViewController_iOS4Compatible.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)goSub1Scene1:(id)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Sub1Storyboard" bundle:[NSBundle mainBundle]];
    Sub1Scene1ViewController *controller = [storyBoard instantiateInitialViewController];
    [self iOS4_presentViewController:controller animated:YES completion:nil];
}

- (IBAction)goSub1Scene2:(id)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Sub1Storyboard" bundle:[NSBundle mainBundle]];
    Sub1Scene2ViewController *controller = [storyBoard instantiateViewControllerWithIdentifier:@"sub1"];
    [self iOS4_presentViewController:controller animated:YES completion:nil];
}

- (IBAction)goSub2Scene1:(id)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Sub2Storyboard" bundle:[NSBundle mainBundle]];
    Sub2Scene1ViewController *controller = [storyBoard instantiateInitialViewController];
    [self iOS4_presentViewController:controller animated:YES completion:nil];
}

- (IBAction)goSub2Scene2:(id)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Sub2Storyboard" bundle:[NSBundle mainBundle]];
    Sub2Scene2ViewController *controller = [storyBoard instantiateViewControllerWithIdentifier:@"sub2"];
    [self iOS4_presentViewController:controller animated:YES completion:nil];
}

@end
