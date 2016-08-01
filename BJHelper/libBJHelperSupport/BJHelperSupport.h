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

@property (nonatomic, strong) id<BJServerConfigProtocol> serverConfig;

+ (instancetype)defaultHelper;

- (NSString *)serverURI;

- (void)startServer;

- (void)stopServer;

@end

@protocol BJServerConfigProtocol <NSObject>

- (NSString *)documentRoot;
- (UInt16)port;

@end

