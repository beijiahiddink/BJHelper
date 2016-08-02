//
//  BJHelperTests.m
//  BJHelperTests <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/29.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#import <XCTest/XCTest.h>
#import "BJFileInfoAssembler.h"
#import "BJFileInfo.h"

@interface BJHelperTests : XCTestCase

@end

@implementation BJHelperTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBJFileInfoAssembler {
    BJFileInfoAssembler *assembler = [BJFileInfoAssembler new];
    __block BJFileInfo *info;
    [assembler setModelClass:[BJFileInfo class]];
    assembler.object = @"BJNotification";
    [assembler performBlock:^{
        info = [assembler model];
        XCTAssertTrue(info, @"BJFileInfoAssembler 组装数据失败");
    }];
}

@end
