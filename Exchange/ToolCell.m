//
//  ToolCell.m
//  Exchange
//
//  Created by 橙晓侯 on 2019/9/21.
//  Copyright © 2019 cxh. All rights reserved.
//

#import "ToolCell.h"

@interface ToolCell ()
@property (weak, nonatomic) IBOutlet UILabel *nameLB;
@property (weak, nonatomic) IBOutlet UILabel *numberLB;

@end

@implementation ToolCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
