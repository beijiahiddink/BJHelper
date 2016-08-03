//
//  BJAssembler.h
//  BJHelper <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/30.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#import <Foundation/Foundation.h>

typedef void(^BJAssemblerBlock)();

//模型组装抽象类
@interface BJAssembler : NSObject

/**
 *  模型
 */
@property (nonatomic, strong, readonly) id model;

/**
 *  组装模型所需资源
 */
@property (nonatomic, copy) id object;

/**
 *  回调
 */
@property (nonatomic, copy) BJAssemblerBlock block;

- (void)setModelClass:(Class)mClass;
- (void)performBlock:(BJAssemblerBlock)block;
- (void)clearAssemblyData;

@end
