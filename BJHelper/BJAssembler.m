//
//  BJAssembler.m
//  BJHelper
//
//  Created by 王旭 on 16/7/30.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//

#import "BJAssembler.h"

@implementation BJAssembler

- (void)setModelClass:(Class)mClass {
    if (mClass)
        _model = [[mClass alloc] init];
}

- (void)performBlock:(BJAssemblerBlock)block {

}

- (void)clearAssemblyData {
    _model = nil;
    _object = nil;
}

@end
