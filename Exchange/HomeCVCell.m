//
//  HomeCVCell.m
//  Exchange
//
//  Created by fengyi on 2019/9/17.
//  Copyright © 2019 cxh. All rights reserved.
//

#import "HomeCVCell.h"

@interface HomeCVCell ()
@property (weak, nonatomic) IBOutlet UILabel *nameLB;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation HomeCVCell

- (void)drawRect:(CGRect)rect
{
    self.contentView.backgroundColor = [UIColor whiteColor];
    self.contentView.clipsToBounds = 1;
    self.contentView.layer.cornerRadius = 10;
    [self drawDefaultShadow:self alph:0.3 cornerRadius:10];
}

- (void)drawDefaultShadow:(UIView *)view alph:(CGFloat)alph cornerRadius:(CGFloat)cornerRadius
{
    [view layoutIfNeeded];
    view.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    float expand = 1.0f * 2;
    view.layer.shadowRadius = 3.0f;
    view.layer.shadowOpacity = alph;
    view.layer.shadowOffset = CGSizeMake(0, 0);
    view.layer.cornerRadius = cornerRadius;
    CGPathRef path = CGPathCreateWithRoundedRect(CGRectMake(0, 0, view.width + expand, view.height + expand), cornerRadius, cornerRadius, NULL);
    view.layer.shadowPath = path;
    view.layer.masksToBounds = NO;
    CGPathRelease(path);
}

- (void)refreshUIWith:(ExchangeType)type
{
    _nameLB.text = [self getNameWithType:type];
}

- (NSString *)getNameWithType:(ExchangeType)type
{
    NSString const *name = nil;
    switch (type) {
            
        case TypeExchange:
            name = kExchange;
            break;
        case TypeLength:
            name = kLength;
            break;
        case TypeArea:
            name = kArea;
            break;
        case TypeVolume:
            name = kVolume;
            break;
        case TypeWeight:
            name = kWeight;
            break;
        case TypeTime:
            name = kTime;
            break;
        case TypeSpeed:
            name = kSpeed;
            break;
        case TypeData:
            name = kData;
            break;
        case TypeVoltage:
            name = kVoltage;
            break;
        case TypeCurrent:
            name = kCurrent;
            break;
        case TypeResistance:
            name = kResistance;
            break;
        case TypeForce:
            name = kForce;
            break;
        case TypeHeat:
            name = kHeat;
            break;
        case TypeTemperature:
            name = kTemperature;
            break;
        case TypeDensity:
            name = kDensity;
            break;
        case TypePress:
            name = kPress;
            break;
    }
    return [name mutableCopy];
}
@end
