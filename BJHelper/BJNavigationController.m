//
//  BJNavigationController.m
//  BJHelper
//
//  Created by 王旭 on 16/7/29.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
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
