//
//  BJWebViewController.m
//  BJHelper <https://github.com/beijiahiddink/BJHelper>
//
//  Created by 王旭 on 16/7/29.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
//
//  For the full copyright and license information, please view the LICENSE
//  file that was distributed with this source code.
//

#import "BJWebViewController.h"

@interface BJWebViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation BJWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    if ([self urlString])
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[self urlString]]]];
    
}

@end
