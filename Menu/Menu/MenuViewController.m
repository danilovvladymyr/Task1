//
//  MenuViewController.m
//  Menu
//
//  Created by Danilov on 8/23/15.
//  Copyright (c) 2015 Workspace. All rights reserved.
//

#import "MenuViewController.h"

#define MENUINSET 0.8

@interface MenuViewController ()

@end

@implementation MenuViewController {
    UITableView *menutable;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"menu" ofType:@"plist"];
    self.menuList = [[NSArray alloc] initWithContentsOfFile:path];
    menutable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width * MENUINSET , self.view.frame.size.height) style:UITableViewStylePlain];
    menutable.dataSource = self;
    menutable.delegate = self;
    [self.view addSubview:menutable];
    
    
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
//    [self.view reloadInputViews];
}

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


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
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
