//
//  YJXWorkOutLabelHeight.h
//  YJXLabel
//
//  Created by 闫继祥 on 2020/8/20.
//  Copyright © 2020 闫继祥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJXWorkOutLabelHeight : NSObject
+ (CGSize)workOutSizeHeightWithString:(NSString*)string fontSize:(UIFont*)fontSize value:(NSValue*)value lineSpace:(CGFloat)space textSpace:(CGFloat)textSpace firstLineHeadIndent:(CGFloat)firstLineHeadIndent;
@end

NS_ASSUME_NONNULL_END
