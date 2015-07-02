//
//  UIView+BYXStyle.h
//
//  Created by liuzuopeng on 6/18/14.
//

#import <UIKit/UIKit.h>

@interface UIView (BYXStyle)

- (void)addRoundedCornerRadius:(CGFloat)radius;

- (void)addRoundedCornerRadius:(CGFloat)radius
               withBorderColor:(UIColor *)color
                         width:(CGFloat)width;

@end
