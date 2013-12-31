//
//  PLLAlgorithm.m
//  CFOP
//
//  Created by Manted on 31/12/2013.
//  Copyright (c) 2013 Ye Hua. All rights reserved.
//

#import "PLLAlgorithm.h"

@implementation PLLAlgorithm

-(id)init{
    self = [super init];
    if(self){
        [self initPll];
    }
    return self;
}

-(void)initPll{
    _pll = [NSArray arrayWithObjects:
            @"(R U ' R) U (R U R U') (R' U' R2)",
            @"(R2' U)(R U R' U')(R' U')(R' U R')",
            @"M2 U M2 U2 M2 U M2",
            @"(U R'U')(R U'R) U (R U'R'U)(R U R2 U')(R'U)",
            @"x' R2 D2(R' U' R)D2(R' U R')",
            @"x'(R U'R) D2 (R'U R) D2 R2",
            @"x'(R U' R') D (R U R')u2'(R' U R)D(R' U' R)",
            @"(R U R' U')(R' F)(R2 U' R' U')(R U R' F')",
            @"U'(R'U R U' R'2 b')x(R'U R)y'(R U R' U' R2)",
            @"(R' U R' U')yx2(R' U R' U'R2)xz'(R'U'R U R)", //10
            @"F(R U'R' U')(R U R' F')(R U R' U')(R' F R F')",
            @"z(U' R D')(R2 U R' U' R2 U) D R'",
            @"(R U R'F')(R U R'U')(R'F R2 U'R'U')",
            @"(R' U2)(R U'U')(R' F R U R' U')(R'F' R2 U')",
            @"(R U'U')(R' U2)(R B' R' U')(R U R B R2' U)",
            @"(R2' u' R U' R)(U R' u)(R2 B U'B')",
            @"(R U R')y'(R2' u' R U')(R' U R' u R2)",
            @"(R2 u R')(U R' U' R u')(R2' F ' U F)",
            @"(R' d' F)(R2 u)(R' U)(R U' R u' R2)",
            @"z(R' U R')z'(R U2 L' U R')z(U R')z'(R U2 L' U R')", //20
            @"z(U'R D')(R2 U R'U')z'(R U R')z(R2 U R')z'(R U')",
            nil];
}

@end
