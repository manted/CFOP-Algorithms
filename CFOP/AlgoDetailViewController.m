//
//  AlgoDetailViewController.m
//  CFOP
//
//  Created by Manted on 31/12/2013.
//  Copyright (c) 2013 Ye Hua. All rights reserved.
//

#import "AlgoDetailViewController.h"

@interface AlgoDetailViewController ()

@end

@implementation AlgoDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [_imageView setFrame:CGRectMake(85, 110, 150, 150)];
    _imageView.image = _image;
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        [_label setFrame:CGRectMake(40, 110 + 150 - 60, 240, 200)];
    }else{
        [_label setFrame:CGRectMake(40, 110 + 150 - 80, 240, 200)];
    }
    _label.text = _algorithmString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
