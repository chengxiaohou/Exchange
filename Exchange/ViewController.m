//
//  ViewController.m
//  Exchange
//
//  Created by fengyi on 2019/9/17.
//  Copyright © 2019 cxh. All rights reserved.
//

#import "ViewController.h"
#import "HomeCVCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *mCollectionView;
@property (nonatomic, strong) NSArray *mDatas;
@end

@implementation ViewController



#pragma mark ========================================生命周期=============================================

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark ========================================私有方法=============================================

#pragma mark 配置UI
- (void)setupUI
{
    
}


#pragma mark - ......::::::: UICollectionViewDataSource :::::::......


//========================== CV布局参数 ==========================
#define ItemPerLine     3
#define ItemSpacing     15
#define LineSpacing     15

#define TopInset        10
#define BottomInset     0
#define LeftInset       ItemSpacing
#define RightInset      ItemSpacing
/** 宽度 根据以上参数自动计算 */
#define ItemWidth       ((_mCollectionView.width - LeftInset - RightInset) - ItemSpacing * (ItemPerLine - 1)) / ItemPerLine
#define ItemHeight      ItemWidth

#pragma mark - ......::::::: <UICollectionViewDelegate> :::::::......

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(ItemWidth, ItemHeight);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(TopInset, LeftInset, BottomInset, RightInset);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return LineSpacing;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return ItemSpacing;
}

#pragma mark CV段数
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

#pragma mark CV行数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return TypePress+1;
}

#pragma mark ［配置CV单元格］
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HomeCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HomeCVCell" forIndexPath:indexPath];
    ExchangeType type = indexPath.row;
    [cell refreshUIWith:type];
    return cell;
}

#pragma mark 点击CV单元格
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}



#pragma mark ========================================动作响应=============================================



#pragma mark ========================================网络请求=============================================



#pragma mark ========================================代理方法=============================================



#pragma mark ========================================通知================================================




@end
