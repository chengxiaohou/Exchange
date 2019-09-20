//
//  HomeCVCell.h
//  Exchange
//
//  Created by fengyi on 2019/9/17.
//  Copyright © 2019 cxh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeCVCell : UICollectionViewCell
- (void)refreshUIWith:(ExchangeType)type;
@end

NS_ASSUME_NONNULL_END
