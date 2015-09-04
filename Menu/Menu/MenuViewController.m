//
//  MenuViewController.m
//  Menu
//
//  Created by Danilov on 8/23/15.
//  Copyright (c) 2015 Workspace. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"menu" ofType:@"plist"];
    self.menuList = [[NSArray alloc] initWithContentsOfFile:path];
//    self.menuList = @[@"1",@"2",@"3",@"4",@"5"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//@synthesize menuList = _menuList;

- (void)setMenuList:(NSArray *)menuList
{
    _menuList = menuList;
    [self.view reloadInputViews];
}
//
//- (NSArray *)menuList
//{
//    if (_menuList) {
//        NSString *path = [[NSBundle mainBundle] pathForResource:@"menu" ofType:@"plist"];
//        _menuList = [[NSArray alloc] initWithContentsOfFile:path];
//    }
//    
//    return _menuList;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.menuList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    if ( cell == nil ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"identifier"];
    }
    
    cell.textLabel.text = self.menuList[indexPath.row];
    return cell;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
