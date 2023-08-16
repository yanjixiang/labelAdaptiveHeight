//
//  ViewController.m
//  YJXLabel
//
//  Created by 闫继祥 on 2020/8/20.
//  Copyright © 2020 闫继祥. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+YJXLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"label设置行间距并自适应高度";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 100, self.view.bounds.size.width-30, 0)];
    label.backgroundColor = [UIColor redColor];
    label.text = @"绑定挖个搭嘎我打发我蝴蝶瓦回复单位hi爱疯阿股份大hi大hi欧弟和外方瓦工法尔大黄蜂带娃分配给免费啊发黑发放到挖";
    CGSize size = [label workOutSizeHeightWithString:label.text fontSize:[UIFont boldSystemFontOfSize:15] value:[NSValue valueWithCGSize:CGSizeMake(label.frame.size.width, MAXFLOAT)] lineSpace:10 textSpace:10 firstLineHeadIndent:20];
    label.frame = CGRectMake(label.frame.origin.x, label.frame.origin.y, label.frame.size.width, size.height);
//    [label setTextDirection:-1];
    [self.view addSubview:label];
}


@end
