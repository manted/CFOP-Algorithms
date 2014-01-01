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
            @"(F R U R' U' F') (f R U R' U' f')",
            @"f(R U R' U')f' U' F(R U R' U')F'",
            @"f(R U R' U')y x(R' F)(R U R' U')F'",
            @"(r' U2) (R U R'U) r",
            @"(r U'U') (R' U' R U' r')",
            @"r U R' U R U'U' r'",
            @" r' U' R U' R' U2 r",
            @" (R' U' R) y' x' (R U')(R'F) (R U R')",
            @"(R U R'U)(R'F R F') (RU'U'R')", //10
            @"r'(R2 U R' U)(R U'U' R' U) (r R')",
            @"(r R'2 U' R U')(R' U2 R U' R)r'",
            @"(r U' r' U')(r U r') (F' U F)",
            @"R' F R U R' F'R (F U' F')",
            @"(r' U' r) (R'U'R U) (r' U r)",
            @"(r U r') (R U R' U') (r U' r')",
            @"F(U R' U'F')U (F R2 U R'U'F ')",
            @"F (R U R' d)(R' U2) (R' F R F')",
            @"(r' R U)(R U R' U' r) (R'2 F R F')",
            @"r'(R U) (R U R'U' r2)(R2'U) (R U') r'", //20
            @"(R U'U') (R' U' R U R' U') (R U' R')",
            @"R U'U' (R'2 U') (R2 U') R'2 U2 R",
            @"(R2 D') (R U'U') (R' D) (R U'U' R)",
            @"(r U R' U') (r' F R F')",
            @"F'(r U R' U') (r' F R)",
            @"R U' U' R' U' R U' R'",
            @"R' U2 R U R' U R",
            @"(r U R' U') (r' R U) (R U' R')",
            @"(r U R' U')(R r'2 F R F') (r R')",
            @"(R2 U R' B')(RU') (R2' U) (R B R')", //30
            @"(r' F' U F) (L F' L' U' r)",
            @"(R U)(B' U')(R' U R B R')",
            @"(R U R' U') (R' F R F')",
            @"(R'U'R U) y(r U R' U')r' R",
            @"R U'U'R2' F R F'(R U'U'R')",
            @"R'U'R U' R'U R U l U'R'U",
            @"F (R U' R'U'R U) (R' F')",
            @"(R U R'U) (R U'R'U') (R'F R F')",
            @"(r U' r' U' r)y(R U R' f')",
            @"(R' F R U R'U') (F' U R)", //40
            @"R U' R' U2 R U y R U' R' U' F'",
            @"(R'U R U'U'R'U')(F'U)(F U R)",
            @"(B' U') (R' U R B)",
            @"f (R U R' U')f'",
            @"F (R U R' U') F'",
            @"(R' U') R' F R F' (U R)",
            @"B'(R' U' R U)2 B",
            @"F (R U R' U')2 F'",
            @"R B'(R2 F)(R2 B) R2 F' R",
            @"L'B (L2 F')(L2 B') L2 F L'", //50
            @"f (R U R' U')2 f'",
            @"R'U' R U' R' d R' U l U",
            @"(r' U2) (R U R'U') (R U R'U) r",
            @"(r U'U') (R' U' R U R' U') (R U' r')",
            @"(R U'U') (R'2 U') R U' R'U2 (F R F')",
            @"F (R U R'U')(R F')(r U R'U')r'",
            @"(R U R' U' r)(R' U) (R U' r')",
            nil];
}

@end
