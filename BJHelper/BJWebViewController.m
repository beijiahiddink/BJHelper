//
//  BJWebViewController.m
//  BJHelper
//
//  Created by 王旭 on 16/7/29.
//  Copyright © 2016年 beijiahiddink. All rights reserved.
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
