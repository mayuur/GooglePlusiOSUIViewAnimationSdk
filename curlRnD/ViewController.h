//
//  ViewController.h
//  curlRnD
//
//  Created by Mayur Joshi on 09/01/13.
//  Copyright (c) 2013 Mayur Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController
- (IBAction)btnPress:(id)sender;
@property (retain, nonatomic) IBOutlet UIImageView *bgView;
- (IBAction)resetPress:(id)sender;

@end
