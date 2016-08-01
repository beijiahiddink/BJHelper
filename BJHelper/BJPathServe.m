//
//  BJPathServe.m
//  BJHelper
//
//  Created by 王旭 on 16/7/29.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//

#import "BJPathServe.h"
#import "BJHelperSupport.h"

@implementation BJPathServe

+ (instancetype)defaultServe {
    static id serve;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        serve = [self new];
    });
    return serve;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _baseLocalPath = [[[BJHelperSupport defaultHelper] serverConfig] documentRoot];
        _baseNetworkPath = [[BJHelperSupport defaultHelper] serverURI];
        _relativePath = @"";
    }
    return self;
}

- (NSString *)currentDirectoryLocalPath {
    return [[self baseLocalPath] stringByAppendingPathComponent:[self relativePath]];
}

- (NSString *)currentDirectoryNetworkPath {
    return [[self baseNetworkPath] stringByAppendingPathComponent:[self relativePath]];
}

- (void)relativePathAppendingPathComponent:(NSString *)str {
    self.relativePath = [[self relativePath] stringByAppendingPathComponent:str];
}

- (void)relativePathDeletingLastPathComponent {
    self.relativePath = [[self relativePath] stringByDeletingLastPathComponent];
}


@end
