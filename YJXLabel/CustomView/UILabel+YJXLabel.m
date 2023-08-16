//
//  UILabel+YJXLabel.m
//  YJXLabel
//
//  Created by 闫继祥 on 2020/8/20.
//  Copyright © 2020 闫继祥. All rights reserved.
//

#import "UILabel+YJXLabel.h"
#import <CoreText/CoreText.h>
#import "YJXWorkOutLabelHeight.h"
@implementation UILabel (YJXLabel)
- (CGSize)workOutSizeHeightWithString:(NSString*)string fontSize:(UIFont*)fontSize value:(NSValue*)value lineSpace:(CGFloat)space textSpace:(CGFloat)textSpace firstLineHeadIndent:(CGFloat)firstLineHeadIndent{
    self.numberOfLines = 0;
    
    NSMutableAttributedString *attributes = [[NSMutableAttributedString alloc] initWithString:string];
    
    //调整字间距(字符串)
    [attributes addAttribute:(__bridge NSString *)kCTKernAttributeName value:@(textSpace) range:NSMakeRange(0, [attributes length])];
    
    //字体调整
    [attributes addAttribute:NSFontAttributeName value:fontSize range:NSMakeRange(0, string.length)];
    
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    
    // 行间距
    paragraphStyle.lineSpacing = space;  // 行间距
    //首行文本缩进
    paragraphStyle.firstLineHeadIndent = firstLineHeadIndent;//首行缩进
    
    [attributes addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, string.length)];
    
    
    self.attributedText = attributes;
    
    return  [YJXWorkOutLabelHeight workOutSizeHeightWithString:string fontSize:fontSize value:value lineSpace:space textSpace:textSpace firstLineHeadIndent:firstLineHeadIndent];
    
}

@end
