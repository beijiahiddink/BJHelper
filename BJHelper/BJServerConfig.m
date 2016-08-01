//
//  BJServerConfig.m
//  BJHelper
//
//  Created by 王旭 on 16/7/30.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//

#import "BJServerConfig.h"

@implementation BJServerConfig

- (NSString *)documentRoot {
   return [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"App"];
}

- (UInt16)port {
    return 54111;
}

@end
