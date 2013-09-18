//
//  tableviewViewController.h
//  tableviewithoutsb
//
//  Created by Goda on 13/9/18.
//  Copyright (c) 2013年 Goda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableviewViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong,nonatomic) IBOutlet UITableView *mTableView;
@property (strong,nonatomic) NSArray *listData;
@end
