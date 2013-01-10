//
//  ViewController.m
//  curlRnD
//
//  Created by Mayur Joshi on 09/01/13.
//  Copyright (c) 2013 Mayur Joshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//sends it to the position from where you would start the animation
- (void)resetObj
{
    [self.bgView removeFromSuperview];
    _bgView.frame = CGRectMake(50, 200, 150, 100);
    [self.view  addSubview:_bgView];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];   
    
    _bgView.frame = CGRectMake(300, 250, 150, 100);
    
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = 1.0 / -1000;
    //this would rotate object on an axis of x = 0, y = 1, z = -0.3f. It is "Z" here which would 
    transform = CATransform3DRotate(transform, 45.0f * M_PI / 180.0f, 0, 1, -0.2f);
    _bgView.layer.transform = transform;

    _bgView.alpha = 0;
    
    _bgView.alpha = 1;
    
    [UIView commitAnimations];
}


- (IBAction)resetPress:(id)sender
{
    [self resetObj];
}

//this would bring the object in....with animation
- (IBAction)btnPress:(id)sender
{
    _bgView.hidden = NO;

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    
    _bgView.frame = CGRectMake(50, 200, 150, 100);
  
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = 1.0 / -1000;
    
    //this would make the object come on its desired position.
    transform = CATransform3DRotate(transform, 45.0f * M_PI / 180.0f, 0, 0, 0);
    _bgView.layer.transform = transform;

    
    
    _bgView.alpha = 0;
    
    _bgView.alpha = 1;

    
    
    [UIView commitAnimations];

}





- (void)dealloc {
    [_bgView release];
    [super dealloc];
}
@end
