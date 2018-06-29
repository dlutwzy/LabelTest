//
//  JXAutosizeTagsViewCell.m
//  LabelTest
//
//  Created by iMac on 2018/6/29.
//  Copyright © 2018年 iMac. All rights reserved.
//

#import "JXAutosizeTagsViewCell.h"

#define VALUE_JX_TAG_CELL_HEIGHT    28
#define VALUE_JX_TAG_CELL_LEFT       6
#define VALUE_JX_TAG_CELL_TOP_Y    10
#define VALUE_JX_TAG_CELL_MARGIN_Y    10
#define VALUE_JX_TAG_CELL_MARGIN_FONT    10

@interface JXAutosizeTagsViewCell()
@property (nonatomic, copy) NSString *titleString;
@property (nonatomic) UILabel *titleLabel;
@property (nonatomic) UIButton *closeButton;
@end

@implementation JXAutosizeTagsViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (void)setupUI {
    //圆角
    self.layer.cornerRadius = VALUE_JX_TAG_CELL_HEIGHT / 4.0f;
    self.layer.masksToBounds = YES;
    //边框
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.layer.borderWidth = 0.5f;
}

- (void)updateUI {

}

#pragma mark - lazy layout
- (UILabel *)titleLabel {
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    }
    return _titleLabel;
}

- (UIButton *)closeButton {
    if (_closeButton == nil) {
        _closeButton = [[UIButton alloc] initWithFrame:CGRectZero];
    }
    return _closeButton;
}

@end
