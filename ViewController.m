//
//  ViewController.m
//  LabelTest
//
//  Created by iMac on 2018/6/29.
//  Copyright © 2018年 iMac. All rights reserved.
//

#import "ViewController.h"
#import "STTagsView.h"
#import "JXAutosizeTagsView.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property (nonatomic) UICollectionView *tagsCollectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    JXAutosizeTagsView *tagsView = [[JXAutosizeTagsView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 0) tagArray:@[@"局部变量",@"变局部变",@"啦啦啦啦绿",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"局部",@"变局部变",@"啦啦啦啦绿"]];
    [self.view addSubview:tagsView];
//    STTagsView * tagView = [STTagsView tagViewWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 0) tagsArray:@[@"局部变量的生命周期（只到程序结束，这个局部变量才会销毁）",@"变局部变",@"啦啦啦啦绿",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"变量才会",@"变量才会",@"你好",@"你是",@"局部变量的生命周期（只到程序结束，这个局部变量才会销毁）",@"变局部变",@"啦啦啦啦绿"] textColor:[UIColor grayColor] textFont:[UIFont systemFontOfSize:14] normalTagBackgroundColor:[UIColor whiteColor] tagBorderColor:[UIColor redColor] contentInsets:UIEdgeInsetsMake(20, 10, 20, 10) labelContentInsets:UIEdgeInsetsMake(5, 15, 5, 15) labelHorizontalSpacing:10 labelVerticalSpacing:10];
//    [self.view addSubview:tagView];

//    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
//    layout.estimatedItemSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width, 200);
//
//    self.tagsCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20) collectionViewLayout:layout];
//    [self.tagsCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"collection_cell"];
//    [self.view addSubview:self.tagsCollectionView];
//
//    self.tagsCollectionView.dataSource = self;
//    self.tagsCollectionView.delegate = self;


}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collection_cell"
                                                                           forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];

    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

//设置大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{

    float width=(self.view.bounds.size.width-4)/3;
    return CGSizeMake(width, width);
}
//设置行间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 2.0f;
}
//触发点击事件
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
}
//设置允许高亮
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}
//点击结束
- (void)collectionView:(UICollectionView *)colView  didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell=[colView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor=[UIColor whiteColor];
}
//点击中
- (void)collectionView:(UICollectionView *)colView  didHighlightItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UICollectionViewCell *cell=[colView cellForItemAtIndexPath:indexPath];
    //    cell.backgroundColor=RGB(226, 226, 226);
    [cell setBackgroundColor:[UIColor lightGrayColor]];
}

@end
