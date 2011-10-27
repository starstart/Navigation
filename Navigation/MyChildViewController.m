//
//  MyChildViewController.m
//  Navigation
//
//  Created by App on 2011/9/30.
// Command /Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/llvm-gcc-4.2 failed with exit code 1 Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MyChildViewController.h"

@implementation MyChildViewController

@synthesize number;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
            self.title = @"計數器";
        UIBarButtonItem *right = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(home:)] autorelease];
        self.navigationItem.rightBarButtonItem=right;
    }
    return self;
}

- (void)home:(id)sender
{
    num = 0;
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)pushMe:(id)sender
{
    num++;
    [self.navigationController pushViewController:[[[[self class] alloc] init] autorelease] animated:YES];
}

- (void)dealloc
{
    [number release];
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
    number.text = [NSString stringWithFormat:@"%d",num];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setNumber:nil];
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
