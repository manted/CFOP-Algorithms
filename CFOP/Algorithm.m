//
//  Algorithm.m
//  CFOP
//
//  Created by Manted on 31/12/2013.
//  Copyright (c) 2013 Ye Hua. All rights reserved.
//

#import "Algorithm.h"

@implementation Algorithm

-(id)initAlgorithms{
    self = [super init];
    if(self){
        [self initF2l];
        [self initOll];
        [self initPll];
    }
    return self;
}

-(void)initF2l{
    _f2l = [NSArray arrayWithObjects:
            @"(R U'U'R'U)2 y'(R'U'R)",
            @"(U R U'R'U')y'(R'U R)",
            @"U'(F'RUR'U')(R'FR)",
            @"(RUR'U')(RU'U'R'U')(RUR')",
            nil];
}

-(void)initOll{
    _oll = [NSArray arrayWithObjects:
            @"(R U'U') (R2' F R F') U2 (R' F R F')",
            nil];
}

-(void)initPll{
    _pll = [NSArray arrayWithObjects:@"(R U ' R) U (R U R U') (R' U' R2)",
            nil];
}
@end
