/*
    ViewController.m
 
    Author: ainren
*/

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
    // We shall retrieve each content pane and wrap it in
    // a scrollview which we shall then inject into the
    // content scroll view. This is so that we can have
    // both localized and global scrolling if needed.
    // The content pane scroll views will be placed taking into
    // consideration the padding specified for that particular
    // element.
    int numberOfContentPanes = [[_contentSource numberOfContentPanes] intValue];
    
}

#pragma mark -

@end
