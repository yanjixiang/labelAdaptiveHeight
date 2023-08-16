//
//  YJXWorkOutLabelHeight.m
//  YJXLabel
//
//  Created by 闫继祥 on 2020/8/20.
//  Copyright © 2020 闫继祥. All rights reserved.
//

#import "YJXWorkOutLabelHeight.h"

@implementation YJXWorkOutLabelHeight

+ (CGSize)workOutSizeHeightWithString:(NSString*)string fontSize:(UIFont*)fontSize value:(NSValue*)value lineSpace:(CGFloat)space textSpace:(CGFloat)textSpace firstLineHeadIndent:(CGFloat)firstLineHeadIndent{
    
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    
    // 行间距
    paragraphStyle.lineSpacing= space;  // 行间距
    //首行文本缩进
    paragraphStyle.firstLineHeadIndent = firstLineHeadIndent;//首行缩进
    
    NSMutableAttributedString *attributes = [[NSMutableAttributedString alloc] initWithString:string];
    
    [attributes addAttribute:NSFontAttributeName value:fontSize range:NSMakeRange(0, string.length)];
    [attributes addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, string.length)];
    //字间距(字符串)
    NSNumber *number = [NSNumber numberWithFloat:textSpace];
    
    [attributes addAttribute:NSKernAttributeName value:number range:NSMakeRange(0, string.length)];
    CGSize size = [attributes boundingRectWithSize:[value CGSizeValue] options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size;
    
    return size;
    
}
@end
