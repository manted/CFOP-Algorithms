//
//  AlgoTableViewController.h
//  CFOP
//
//  Created by Manted on 31/12/2013.
//  Copyright (c) 2013 Ye Hua. All rights reserved.
//

#import <UIKit/UIKit.h>

#define F2L 0
#define OLL 1
#define PLL 2

@interface AlgoTableViewController : UITableViewController

@property (nonatomic) int type;
@property (nonatomic, strong) NSArray *algorithms;

@end
