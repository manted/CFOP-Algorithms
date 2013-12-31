//
//  OLLAlgorithm.m
//  CFOP
//
//  Created by Manted on 31/12/2013.
//  Copyright (c) 2013 Ye Hua. All rights reserved.
//

#import "OLLAlgorithm.h"

@implementation OLLAlgorithm

-(id)init{
    self = [super init];
    if(self){
        [self initOll];
    }
    return self;
}

-(void)initOll{
    _oll = [NSArray arrayWithObjects:
            @"(R U'U') (R2' F R F') U2 (R' F R F')",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            @"",
            nil];
}

@end
