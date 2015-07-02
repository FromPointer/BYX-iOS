//
//  UIView+BYXTimerEvent.h
//
//  Created by liuzuopeng on 14/11/26.
//

#import <UIKit/UIKit.h>

@interface UIView (BYXTimerEvent)

//block invoke in Main Thread
- (void)setCountdown:(int)countSecond 
		  startBlock:(void(^)(UIView *view, int countSecond))startBlock 
	  countdownBlock:(void(^)(UIView *view, int leftSecond))countdownBlock;

@end
