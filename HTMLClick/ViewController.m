//
//  ViewController.m
//  HTMLClick
//
//  Created by United TCS on 10/4/16.
//  Copyright © 2016 United TCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *htmlString=@"<html><head><title></title></head><body><a href =\"inapp://capture\">Button</a></body></html";
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    webView.delegate=self;
    
    
    [webView loadHTMLString:htmlString baseURL:nil];
    [self.view addSubview:webView];

    
}


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    if ([request.URL.scheme isEqualToString:@"inapp"]) {
        if ([request.URL.host isEqualToString:@"capture"]) {
            NSLog(@"Capture");
            
            
        }
        return NO;
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
