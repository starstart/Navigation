//
//  MyChildViewController.h
//  Navigation
//
//  Created by App on 2011/9/30.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyChildViewController : UIViewController {
    UILabel *number;
    NSInteger *num;
}

@property (nonatomic, retain) IBOutlet UILabel *number;
- (IBAction)pushMe:(id)sender;
@end
