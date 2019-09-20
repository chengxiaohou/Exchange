//
//  UIView+Frame.h
//  GoodBarberV2
//
//  Created by MPow on 31/10/13.
//  Copyright (c) 2013 DuoApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)


@property(nonatomic,readwrite) CGFloat x,y,width,height,centerX,centerY;

@property(nonatomic,readwrite) CGSize size;
@property(nonatomic,readwrite) CGPoint origin;

@end
