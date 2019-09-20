//
//  ToolVC.m
//  Exchange
//
//  Created by fengyi on 2019/9/17.
//  Copyright © 2019 cxh. All rights reserved.
//

#import "ToolVC.h"

@interface ToolVC ()

@end

@implementation ToolVC

#pragma mark ========================================生命周期=============================================

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark ========================================私有方法=============================================

#pragma mark - ......::::::: UITableViewDataSource :::::::......

#pragma mark TV段数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
#pragma mark TV行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return TAB.datas.count;
}

#pragma mark ［配置TV单元格］
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TVCell *cell = [tableView dequeueReusableCellWithIdentifier:TAB.typeName forIndexPath:indexPath];
    [cell setCellInfo:TAB.datas[ROW]];
    return cell;
}

#pragma mark TV单元格点击
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


#pragma mark ========================================动作响应=============================================



#pragma mark ========================================网络请求=============================================



#pragma mark ========================================代理方法=============================================



#pragma mark ========================================通知================================================



@end
