//
//  UIImage+Extend.m
//  Pods
//
//  Created by Eleven Chen on 15/8/12.
//
//

#import "UIImage+Extend.h"

@implementation UIImage (Extend)

- (UIImage*) scaleImage: (CGFloat) scale
{
    CGSize size = CGSizeMake(self.size.width * scale, self.size.height * scale);
    UIGraphicsBeginImageContext(size);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage* toImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return toImage;
}

@end
