//
//  Sub1Scene1ViewController.m
//  CallOtherStoryBoardSample
//
//  Created by mfks17 on 7/1/12.
//  Copyright (c) 2012 mfks17 <mfks17@gmail.com>. All rights reserved.
//

#import "Sub1Scene1ViewController.h"
#import "UIViewController+UIViewController_iOS4Compatible.h"

@interface Sub1Scene1ViewController ()

@end

@implementation Sub1Scene1ViewController

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)goMainSB:(id)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:[NSBundle mainBundle]];
    UIViewController *controller = [storyBoard instantiateInitialViewController];
    [self iOS4_presentViewController:controller animated:YES completion:nil];
}
@end
