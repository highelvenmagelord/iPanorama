/*
    ViewController.h
 
    Author: ainren
*/

#import <UIKit/UIKit.h>
#import "PanoramaContentPane.h"

@protocol PanoramaContentSource <NSObject>

- (BOOL)hasBackgroundView;
- (NSNumber *)numberOfContentPanes;
- (PanoramaContentPane *)contentViewAtPosition:(int)position;
- (CGFloat)paddingForContentViewAtPosition:(int)position;
- (UIView *)viewForBackground;
- (CGSize)sizeForBackgroundView;

@end

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *backgroundScrollView;
@property (weak, nonatomic) IBOutlet UIScrollView *contentScrollView;
@property (weak, nonatomic) id <PanoramaContentSource> contentSource;

@end
