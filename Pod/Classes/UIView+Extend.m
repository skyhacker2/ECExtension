//
//  UIView+Extend.m
//  Pods
//
//  Created by Eleven Chen on 15/7/31.
//
//

#import "UIView+Extend.h"

@implementation UIView (Extend)

+ (id) loadFromNibWithName: (NSString*) name
{
    return [UIView loadFromNibWithName:name ower:self];
}

+ (id) loadFromNibWithName:(NSString *)name ower:(id)ower
{
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:name owner:ower options:nil];
    if (nib == nil) {
        NSLog(@"%@.xib is not exist", name);
    }
    return [nib objectAtIndex:0];
    
}

- (void) centerYInSuperView
{
    if (!self.superview) {
        return;
    }
    
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.superview
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1.0f
                                                                constant:0]];
}

- (void) centerXInSuperView
{
    if (!self.superview) {
        return;
    }
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeCenterX
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:NSLayoutAttributeCenterX
                                                              multiplier:1.0f
                                                                constant:0]];
}

- (void) centerInSuperView
{
    [self centerXInSuperView];
    [self centerYInSuperView];
}

- (void) constraintWidth: (CGFloat) width
{
    NSDictionary* views = @{@"self": self};
    NSDictionary* metrics = @{@"width": @(width)};
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[self(width)]"
                                                                         options:0
                                                                         metrics:metrics
                                                                            views:views]];
}

- (void) constraintHeight: (CGFloat) height
{
    NSDictionary* views = @{@"self": self};
    NSDictionary* metrics = @{@"height": @(height)};
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[self(height)]"
                                                                           options:0
                                                                           metrics:metrics
                                                                             views:views]];
}

- (void) constraintSize: (CGSize) size
{
    [self constraintWidth:size.width];
    [self constraintHeight:size.height];
}

@end
