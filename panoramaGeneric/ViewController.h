//
//  ViewController.h
//  panoramaGeneric
//
//  Created by Applico on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PanoramaContentSource <NSObject>

- (BOOL)hasBackgroundView;
- (NSInteger *)numberOfContentPanes;
- (UIView *)contentViewAtPosition:(int)position;
- (CGFloat)paddingForContentViewAtPosition:(int)position;
- (UIView *)viewForBackground;
- (CGSize)sizeForBackgroundView;

@end

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *backgroundScrollView;
@property (weak, nonatomic) IBOutlet UIScrollView *contentScrollView;
@property (weak, nonatomic) id <PanoramaContentSource> contentSource;

@end
