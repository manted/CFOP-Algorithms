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
//    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)]];
    _imageView.image = _image;
    _label.text = _algorithmString;
}

//-(void)tap{
//    [self dismissModalViewControllerAnimated:YES];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
