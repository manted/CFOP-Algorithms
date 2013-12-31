//
//  F2LAlgorithm.m
//  CFOP
//
//  Created by Manted on 31/12/2013.
//  Copyright (c) 2013 Ye Hua. All rights reserved.
//

#import "F2LAlgorithm.h"

@implementation F2LAlgorithm

-(id)init{
    self = [super init];
    if(self){
        [self initF2l];
    }
    return self;
}

-(void)initF2l{
    _f2l = [NSArray arrayWithObjects:
            @"(R U'U'R'U)2 y'(R'U'R)",
            @"(U R U'R'U')y'(R'U R)",
            @"U'(F'RUR'U')(R'FR)",
            @"(RUR'U')(RU'U'R'U')(RUR')",
            @"(R U'R U)y(R U'R'F2)",
            @"y'(R'U' R U)(R'U'R)",
            @"(R U'R'U)(R U'R')",
            @"(RU'R'U)(R U'U'R'U)(RU'R')",
            @"R2 y(R U R'U')y'(R'U R')",
            @"y'(R'U)(R U')(R'U R)　", //10
            @"(R U R'U')(R U R')",
            @"(R U R'U')2 (R U R')",
            @"(R U'R') y'(R'U2 R)",
            @"y'(R'U2)(R U R'U')R",
            @"y'U'(R' U2)(R U'R'U)R",
            @"y'(R'U R U'U')(R'U'R)",
            @"(R U R'U)(R U'U'R'd)(R'U R)",
            @"(RUR')U2(R U R'U')(RUR')",
            @"(R U'R' U2)(R U R')",
            @"U(R U'U')(R'U R U')R'", //20
            @"(R U'U')(R'U'R U)R'",
            @"U'(R U')(R'U2)(R U'R')",
            @"U'(R U R') d (R'U'R)",
            @"d(R'U R U')(R'U'R)",
            @"y'(R'U'R)",
            @"(d R'U'R U')(R'U'R)",
            @"y'(R U'U')R'2 U'R2 U'R'",
            @"y'(R'U)(R d'U')(R U R')",
            @"U'(R U'U')(R'U2)(R U'R')",
            @"U'(R U R' U')(R U'U'R')", //30
            @"U R U'R'",
            @"U'(R U'U'R'U)(R U R')",
            @"d(R'U'R)d'(R U R')",
            @"y'U'(R'U R)",
            @"(d R'U'R U'U')(R' U R)",
            @"d(R'U2)(R U'U')(R'U R)",
            @"(R U'R'U)(d R'U'R)",
            @"(R U')(R'U)(R U')(R'U2)(R U'R')",
            @"U'(R U R' U)(R U R')",
            @"(R U R')", //40
            @"U'(R U'R'U)(R U R')",
            nil];
}

@end
