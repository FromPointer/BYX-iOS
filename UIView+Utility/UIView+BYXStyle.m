//
//  UIView+BYXStyle.m
//
//  Created by liuzuopeng on 6/18/14.
//

#import "UIView+BYXStyle.h"

@implementation UIView (BYXStyle)

- (void)addRoundedCornerRadius:(CGFloat)radius {
	[[self layer] setCornerRadius:radius];
	[[self layer] setMasksToBounds:YES];
}


- (void)addRoundedCornerRadius:(CGFloat)radius
               withBorderColor:(UIColor *)color
                         width:(CGFloat)width {
    [[self layer] setBorderWidth:width];
    [[self layer] setBorderColor:color.CGColor];
    [[self layer] setCornerRadius:radius];
    [[self layer] setMasksToBounds:YES];
}

@end
