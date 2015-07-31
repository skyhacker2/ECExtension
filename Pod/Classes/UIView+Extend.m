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

@end
