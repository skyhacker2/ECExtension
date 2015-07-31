//
//  ECViewController.m
//  ECExtension
//
//  Created by Eleven Chen on 07/31/2015.
//  Copyright (c) 2015 Eleven Chen. All rights reserved.
//

#import "ECViewController.h"
#import <ECExtension/ECExtension.h>


@interface ECViewController ()
@property (weak, nonatomic) IBOutlet UIView *colorView;

@end

@implementation ECViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.colorView.backgroundColor = [UIColor colorWithString:@"#00ff00"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
