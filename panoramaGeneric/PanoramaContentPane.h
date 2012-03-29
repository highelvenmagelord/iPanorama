/*
    PanoramaContentPane.h
 
    Author: ainren
 
    Panorama Content Pane:
    This is a specialized UIView subclass which shall be used to represent the inner content views of the
    panorama.
    It will have an enum type indicating the type of "content" that it is, like for instance,
    A list of buttons would be of type FormTypeContentPane, a text area would be TextAreaContentPane
    and depending on the type, the content pane will have specialized scrolling behavior.
*/


#import <UIKit/UIKit.h>

@interface PanoramaContentPane : UIView

@end
