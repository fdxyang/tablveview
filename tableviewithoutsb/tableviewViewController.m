//
//  tableviewViewController.m
//  tableviewithoutsb
//
//  Created by Goda on 13/9/18.
//  Copyright (c) 2013年 Goda. All rights reserved.
//

#import "tableviewViewController.h"

@interface tableviewViewController ()

@end

@implementation tableviewViewController

@synthesize mTableView;
@synthesize listData;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    listData = [NSArray arrayWithObjects:@"item1",@"item2",@"item3", nil];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    self.mTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0,screenRect.size.width,screenRect.size.height)];
    
    [self.mTableView setDataSource:self];
    [self.mTableView setDelegate:self];
    [self.view addSubview:self.mTableView];
     
    [self.mTableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [listData count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellForRowAtIndexPath");
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [listData objectAtIndex:indexPath.row];
    return cell;
}

@end
