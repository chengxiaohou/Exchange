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

- (void)loadJson
{
    //读取本地JSON 方法一 路径查找 转NSData
    NSString *path = [[NSBundle mainBundle] pathForResource:@"exchange" ofType:@"json"];
    
    NSData *jsonData = [NSData dataWithContentsOfFile:path];
    //解析JSON 可以用数组或字典装着
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:nil];
     
    NSString *base = dic[@"base"];
    NSDictionary *rateDict = dic[@"rates"];
}

#pragma mark - ......::::::: UITableViewDataSource :::::::......

#pragma mark TV段数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
#pragma mark TV行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

#pragma mark ［配置TV单元格］
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"" forIndexPath:indexPath];
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
