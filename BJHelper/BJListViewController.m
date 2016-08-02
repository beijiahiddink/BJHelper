//
//  BJListViewController.m
//  BJHelper <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/27.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#import "BJListViewController.h"
#import "BJWebViewController.h"
#import "BJHelperSupport.h"
#import "BJPathServe.h"
#import "BJFileInfoAssembler.h"
#import "BJFileInfo.h"


@interface BJListViewController () {
    NSMutableArray *_dataArray;
    __unsafe_unretained BJPathServe *_pathServe;
}

@end

@implementation BJListViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _dataArray = [NSMutableArray new];
        _pathServe = [BJPathServe defaultServe];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
        
    self.title = [[_pathServe currentDirectoryLocalPath] lastPathComponent];
    
    [[self tableView] registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    
    [self refresh:nil];
}

- (IBAction)refresh:(UIRefreshControl *)sender {
    [sender beginRefreshing];
    [self _refreshData];
    [sender endRefreshing];
}

- (void)_refreshData {
    [_dataArray removeAllObjects];

    NSError *error;
    NSArray *listArray = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:[_pathServe currentDirectoryLocalPath] error:&error];
    
    BJFileInfoAssembler *assembler = [BJFileInfoAssembler new];
    
    [listArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [assembler setModelClass:[BJFileInfo class]];
        assembler.object = obj;
        [assembler performBlock:^{
            [_dataArray addObject:[assembler model]];
        }];
    }];
    
    [[self tableView] reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"UITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    BJFileInfo *fileInfo = [_dataArray objectAtIndex:[indexPath row]];
    
    [cell textLabel].text = [fileInfo fileName];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    BJFileInfo *fileInfo = [_dataArray objectAtIndex:[indexPath row]];
    
    if ([fileInfo isDirectory]) {
        [_pathServe relativePathAppendingPathComponent:[fileInfo fileName]];
        BJListViewController *controller = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"BJListViewController"];
        [[self navigationController] pushViewController:controller animated:YES];
    }
    
    else {
        
        if ([[fileInfo fileName] isEqualToString:@"install.plist"]) {
            NSString *urlString = [NSString stringWithFormat:@"itms-services://?action=download-manifest&url=%@", [fileInfo networkFullPath]];
            NSURL *url = [NSURL URLWithString:urlString];
            if ([[UIApplication sharedApplication] canOpenURL:url])
                [[UIApplication sharedApplication] openURL:url];
            else
                NSLog(@"无法安装");
        }
        
        else {
            
            NSString *message;
            
            if ([fileInfo fileExtension]) {
                
                if ([[fileInfo fileExtension] isEqualToString:@"html"]) {
                    BJWebViewController *controller = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"BJWebViewController"];
                    controller.urlString = [fileInfo networkFullPath];
                    [[self navigationController] pushViewController:controller animated:YES];
                    return;
                }
                
                else {
                    message = [NSString stringWithFormat:@"暂不支持 %@ 类型", [fileInfo fileExtension]];
                }
                
            }
            
            else {
                message = @"文件类型未知，无法打开";
            }
            
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alertView show];
        }
    }
}

@end
