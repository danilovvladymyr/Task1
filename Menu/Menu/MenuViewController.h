//
//  MenuViewController.h
//  Menu
//
//  Created by Danilov on 8/23/15.
//  Copyright (c) 2015 Workspace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, copy) NSArray *menuList;

@end
