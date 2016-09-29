//
//  ViewController.m
//  jd_openssl
//
//  Created by xiaoyi li on 16/9/29.
//  Copyright © 2016年 xiaoyi li. All rights reserved.
//

#import "ViewController.h"
#import "header.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    char chDN[255] = "/CN=www.jinhill.com/O=Beijing Jinhill Inc./C=CN";
    char chCSR[2048] = {0};
    int rv = GenCSR(chDN, strlen(chDN), chCSR, sizeof(chCSR));
    printf("CSR:\n%s", chCSR);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
