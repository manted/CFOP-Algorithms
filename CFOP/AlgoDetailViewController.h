//
//  AlgoDetailViewController.h
//  CFOP
//
//  Created by Manted on 31/12/2013.
//  Copyright (c) 2013 Ye Hua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlgoDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) NSString *algorithmString;
@end
