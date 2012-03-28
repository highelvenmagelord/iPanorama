//
//  ViewController.m
//  panoramaGeneric
//
//  Created by Applico on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int currentPane;
    
}

- (void)buildViewHierarchy;
- (void)buildPanorama;
- (void)injectContentPanes;

@end

@implementation ViewController
@synthesize backgroundScrollView;
@synthesize contentScrollView;
@synthesize contentSource = _contentSource;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    [self buildViewHierarchy];
    
}

- (void)viewDidUnload
{
    [self setBackgroundScrollView:nil];
    [self setContentScrollView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark Constructing the background (Panorama)

- (void)buildViewHierarchy
{
    // Set up the views in sequence.
    // 1. Primary scrollview's content and size.
    // 2. Content scrollview's content panes and sizes.
    
    // 1.
    [self buildPanorama];
    
    // 2.
    [self injectContentPanes];
}

- (void)buildPanorama
{
    if([_contentSource hasBackgroundView])
    {
        UIView *backgroundView = [_contentSource viewForBackground];
        [backgroundScrollView addSubview:backgroundView];
    }
}

- (void)injectContentPanes
{
    
}

#pragma mark -

@end
