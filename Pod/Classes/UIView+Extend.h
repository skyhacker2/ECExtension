//
//  UIView+Extend.h
//  Pods
//
//  Created by Eleven Chen on 15/7/31.
//
//

#import <UIKit/UIKit.h>

@interface UIView (Extend)

+ (id) loadFromNibWithName: (NSString*) name;

+ (id) loadFromNibWithName:(NSString *)name ower:(id)ower;

- (void) centerYInSuperView;

- (void) centerXInSuperView;

- (void) centerInSuperView;

- (void) constraintWidth: (CGFloat) width;

- (void) constraintHeight: (CGFloat) height;

- (void) constraintSize: (CGSize) size;

- (void) layoutWidthMatchSuperView;

- (void) layoutHeightMatchSuperView;

- (void) layoutMatchSuperView;

- (void) layoutMarginTopSuperView:(CGFloat) dis;

- (void) layoutMarginBottomSuperView:(CGFloat) dis;

- (void) layoutMarginLeftSuperView:(CGFloat) dis;

- (void) layoutMarginRightSuperView:(CGFloat) dis;

- (void) layoutMarginSuperView: (CGFloat ) dis;


@end
