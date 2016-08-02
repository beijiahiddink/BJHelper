//
//  BJServerConfig.m
//  BJHelper <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/30.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
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
