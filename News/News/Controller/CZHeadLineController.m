//
//  CZHeadLineController.m
//  网易新闻
//
//  Created by gv pro on 16/2/26.
//  Copyright © 2016年 gv pro. All rights reserved.
//

#import "CZHeadLineController.h"
#import "CZHeadLineCell.h"
@interface CZHeadLineController ()
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;

@end

@implementation CZHeadLineController

static NSString * const reuseIdentifier = @"HeadLine";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViiew];
}
- (void)setupViiew {
      //设置背景色
    self.collectionView.backgroundColor = [UIColor whiteColor];
    //设置itme大小
    self.layout.itemSize = self.collectionView.bounds.size;
    //设置滚动方向
    self.layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //隐藏滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;
    //设置间隔
    self.layout.minimumLineSpacing = 0;
    //设置分页
    self.collectionView.pagingEnabled = YES;
    //关闭弹簧
    self.collectionView.bounces = NO;
}



//#pragma mark <UICollectionViewDataSource>
//
//- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//    return 0;
//}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CZHeadLineCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    //设置背景色
     cell.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    return cell;
}



@end
