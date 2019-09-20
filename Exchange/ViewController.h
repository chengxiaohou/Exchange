//
//  ViewController.h
//  Exchange
//
//  Created by fengyi on 2019/9/17.
//  Copyright © 2019 cxh. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSUInteger, ExchangeType)
{    TypeExchange,TypeLength,TypeArea,TypeVolume,TypeWeight,TypeTime,TypeSpeed,TypeData,TypeVoltage,TypeCurrent,TypeResistance,TypeForce,TypeHeat,TypeTemperature,TypeDensity,TypePress,
};

static NSString const *kExchange = @"Exchange";
static NSString const *kLength = @"Length";
static NSString const *kArea = @"Area";
static NSString const *kVolume = @"Volume";
static NSString const *kWeight = @"Weight";
static NSString const *kTime = @"Time";
static NSString const *kSpeed = @"Speed";
static NSString const *kData = @"Data";
static NSString const *kVoltage = @"Voltage";
static NSString const *kCurrent = @"Current";
static NSString const *kResistance = @"Resistance";
static NSString const *kForce = @"Force";
static NSString const *kHeat = @"Heat";
static NSString const *kTemperature = @"Temperature";
static NSString const *kDensity = @"Density";
static NSString const *kPress = @"Press";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
//static NSString const *k<##> = @"<##>";
static NSString const *kLight = @"Light";
static NSString const *kTorque = @"Torque";
static NSString const *kPower = @"Power";
static NSString const *kNumerical = @"Numerical";

@interface ViewController : UIViewController


@end

