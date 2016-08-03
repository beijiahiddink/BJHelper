//
//  BJNavigationController.m
//  BJHelper <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/29.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#import "BJNavigationController.h"
#import "BJPathServe.h"

@interface BJNavigationController ()

@end

@implementation BJNavigationController

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    BJPathServe *pathServe = [BJPathServe defaultServe];
    [pathServe relativePathDeletingLastPathComponent];
    return [super popViewControllerAnimated:animated];
}


@end
