//
//  JXAutosizeTagView.h
//  LabelTest
//
//  Created by iMac on 2018/6/29.
//  Copyright © 2018年 iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JXAutosizeTagsView : UIView
// 标签数组
@property (nonatomic,retain) NSArray* tagArray;

// 选中标签文字颜色
@property (nonatomic,retain) UIColor* textColorSelected;
// 默认标签文字颜色
@property (nonatomic,retain) UIColor* textColorNormal;

// 选中标签背景颜色
@property (nonatomic,retain) UIColor* backgroundColorSelected;
// 默认标签背景颜色
@property (nonatomic,retain) UIColor* backgroundColorNormal;

- (instancetype)initWithFrame:(CGRect)frame tagArray:(NSArray *)tagArray;
@end
