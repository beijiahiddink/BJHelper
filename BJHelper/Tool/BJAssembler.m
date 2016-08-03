//
//  BJAssembler.m
//  BJHelper <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/30.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
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
