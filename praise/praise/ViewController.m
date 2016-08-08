//
//  ViewController.m
//  CAEmitterLayer
//
//  Created by Apple on 15/11/13.
//  Copyright © 2015年 LeungKinKeung. All rights reserved.
//

#import "ViewController.h"
#import "OOPraiseButton.h"
#import "TYWaveProgressView.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@property (nonatomic, weak) OOPraiseButton *waveProgressView;


@end

@implementation ViewController{
    NSInteger _rang;
    //存活时间
    int cellLifeTime;
    UIImageView *praiseButton;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置默认值
    [self setDefault];
    //设置页面
    [self UIInit];
}

- (void)setDefault{
    cellLifeTime = 15;
}

- (void)UIInit{
    self.view.backgroundColor = [UIColor whiteColor];
    
    OOPraiseButton *waveProgressView = [[OOPraiseButton alloc]initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame) - 180)/2, kScreenHeight/2, 180, 180)];
    self.waveProgressView = waveProgressView;
    waveProgressView.userInteractionEnabled = YES;
    waveProgressView.waveViewMargin = UIEdgeInsetsMake(15, 15, 20, 20);
    waveProgressView.backgroundImageView.image = [UIImage imageNamed:@"bg_tk_003"];
//    waveProgressView.numberLabel.text = @"80";
//    waveProgressView.numberLabel.font = [UIFont boldSystemFontOfSize:70];
//    waveProgressView.numberLabel.textColor = [UIColor whiteColor];
//    waveProgressView.unitLabel.text = @"%";
//    waveProgressView.unitLabel.font = [UIFont boldSystemFontOfSize:20];
//    waveProgressView.unitLabel.textColor = [UIColor whiteColor];
//    waveProgressView.explainLabel.text = @"电量";
//    waveProgressView.explainLabel.font = [UIFont systemFontOfSize:20];
//    waveProgressView.explainLabel.textColor = [UIColor whiteColor];
    
    waveProgressView.percent = 0.4;
    [self.view addSubview:waveProgressView];
    [waveProgressView startWave];

    waveProgressView.maxLeft = 50;
    waveProgressView.maxRight = 50;
    waveProgressView.maxHeight = 300;
    waveProgressView.duration = 8;
    waveProgressView.imageSize = CGSizeMake(100, 100);
    waveProgressView.images = @[[UIImage imageNamed:@"live_love1"], [UIImage imageNamed:@"live_love2"]];
    waveProgressView.isCrit = YES;
    waveProgressView.critInterval = 6;//修改间隔
    //添加手势
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(click)];
    [waveProgressView addGestureRecognizer:gesture];
    
}
- (void)click{
    //弹星星
    [self.waveProgressView generateBubbleInRandom];
    //增长的
//    self.waveProgressView.percent = self.waveProgressView;

}
@end
