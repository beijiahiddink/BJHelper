//
//  BJFileInfo.h
//  BJHelper <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/29.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#import <Foundation/Foundation.h>

//文件信息模型
@interface BJFileInfo : NSObject

@property (nonatomic, copy) NSString *fileName;
@property (nonatomic, copy) NSString *fileExtension;
@property (nonatomic, copy) NSString *localFullPath;
@property (nonatomic, copy) NSString *networkFullPath;
@property (nonatomic) BOOL isDirectory;

@end
