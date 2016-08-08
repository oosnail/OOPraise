//
//  OOPraiseButton.h
//  praise
//
//  Created by ztc on 16/4/23.
//  Copyright © 2016年 oosnail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYWaveProgressView.h"
@interface OOPraiseButton : TYWaveProgressView

//最左边位置
@property (nonatomic, assign)CGFloat maxLeft;
//最右边位置
@property (nonatomic, assign)CGFloat maxRight;
//最高位置
@property (nonatomic, assign)CGFloat maxHeight;
//消失的时间
@property (nonatomic, assign)CGFloat duration;
//图片（随机出现）
@property (nonatomic, strong)NSArray *images;
//图片（随机出现）
//气泡的大小。不设置的话默认是图片的大小
@property (nonatomic, assign)CGSize imageSize;

//是否有暴击
@property (nonatomic, assign)BOOL isCrit;
//暴击间隔
@property (nonatomic, assign)int critInterval;
//暴击后 产生的气泡数
@property (nonatomic, assign)int critBubbleNum;

//单一的图片
- (void)generateBubbleWithImage:(UIImage *)image;

//随机出现
- (void)generateBubbleInRandom;

@end
