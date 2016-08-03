//
//  BJPathServe.h
//  BJHelper <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/29.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#import <Foundation/Foundation.h>

//全局路径管理
@interface BJPathServe : NSObject

@property (nonatomic, copy) NSString *baseLocalPath;
@property (nonatomic, copy) NSString *baseNetworkPath;
@property (nonatomic, copy) NSString *relativePath;

+ (instancetype)defaultServe;

- (NSString *)currentDirectoryLocalPath;

- (NSString *)currentDirectoryNetworkPath;

- (void)relativePathAppendingPathComponent:(NSString *)str;

- (void)relativePathDeletingLastPathComponent;

@end
