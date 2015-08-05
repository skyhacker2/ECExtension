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


@end
