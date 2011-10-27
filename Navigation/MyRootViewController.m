//
//  MyRootViewController.m
//  Navigation
//
//  Created by App on 2011/9/30.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MyRootViewController.h"
#import "MyChildViewController.h"

@implementation MyRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"計數器";
    }
    return self;
}

- (IBAction)start:(id)sender
{
    MyChildViewController *myChildViewController = [[MyChildViewController alloc] init];
    [self.navigationController pushViewController:myChildViewController animated:YES];
    [myChildViewController release];
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
