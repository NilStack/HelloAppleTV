//
//  ViewController.m
//  HelloTV
//
//  Created by Peng on 9/10/15.
//  Copyright © 2015 Peng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UILabel *label;
@property (nonatomic) UITapGestureRecognizer* tapRecognizer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label = [[UILabel alloc] init];
    self.label.center = self.view.center;
    self.label.text = @"Hello TV!";
    self.label.textColor = [UIColor blackColor];
    self.label.font = [UIFont systemFontOfSize:90.0];
    [self.label sizeToFit];
    [self.view addSubview:self.label];
    
    UITapGestureRecognizer* tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped)];
    tapRecognizer.allowedPressTypes = @[[NSNumber numberWithInteger:UIPressTypePlayPause] ];
    [self.view addGestureRecognizer:tapRecognizer];
    
}

- (void)tapped
{
    self.label.textColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
