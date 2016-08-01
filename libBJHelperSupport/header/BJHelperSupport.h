//
//  BJHelperSupport.h
//  BJHelperFW
//
//  Created by 王旭 on 16/7/27.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kBJServerDidStart;
extern NSString *const kBJServerDidStop;

@protocol BJServerConfigProtocol;

@interface BJHelperSupport : NSObject

/**
 *  服务配置（默认已经配置好，此处可为空）
 */
@property (nonatomic, strong) id<BJServerConfigProtocol> serverConfig;

/**
 *  服务实例
 *
 *  @return 全局服务实例
 */
+ (instancetype)defaultHelper;

/**
 *  服务URI
 *
 *  @return 默认的服务URI
 */
- (NSString *)serverURI;

/**
 *  开始服务
 */
- (void)startServer;

/**
 *  结束服务
 */
- (void)stopServer;

@end

@protocol BJServerConfigProtocol <NSObject>

/**
 *  根目录（默认根目录路径为'[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"App"]'）
 *
 *  @return 服务根目录路径
 */
- (NSString *)documentRoot;

/**
 *  端口（默认端口为54111）
 *
 *  @return 服务端口号
 */
- (UInt16)port;

@end

