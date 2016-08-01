//
//  BJFileInfoAssembler.m
//  BJHelper
//
//  Created by 王旭 on 16/7/30.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//

#import "BJFileInfoAssembler.h"
#import "BJFileInfo.h"
#import "BJPathServe.h"

@implementation BJFileInfoAssembler

- (void)performBlock:(BJAssemblerBlock)block {
    if ([[self model] isKindOfClass:[BJFileInfo class]])
        [self _assemblyBJFileInfo];
    
    block();
}

- (void)_assemblyBJFileInfo {
    BJFileInfo *info = [self model];
    
    info.fileName = [self object];
    
    info.fileExtension = [[info fileName] pathExtension];
    
    info.localFullPath = [[[BJPathServe defaultServe] currentDirectoryLocalPath] stringByAppendingPathComponent:[info fileName]];
    
    info.networkFullPath = [[[BJPathServe defaultServe] currentDirectoryNetworkPath] stringByAppendingPathComponent:[info fileName]];
    
    BOOL isDirectory;
    [[NSFileManager defaultManager] fileExistsAtPath:[info localFullPath] isDirectory:&isDirectory];
    info.isDirectory = isDirectory;
}

@end
