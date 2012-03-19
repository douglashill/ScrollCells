//
//  ScrollCellsTableViewController.m
//  ScrollCells
//
//  Created by Douglas Hill on 19/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScrollCellsTableViewController.h"

@interface ScrollCellsTableViewController ()

@end

@implementation ScrollCellsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
	return [self init];;
}

- (id)init
{
    if (self = [super initWithStyle:UITableViewStylePlain]) {
        [self setTitle:@"Hoohar!"];
    }
    return self;
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (!cell) {
		cell = [[[UITableViewCell alloc] init] autorelease];
	}
	
	if ([indexPath row] % 2 == 0) {
		[[cell contentView] setBackgroundColor:[UIColor yellowColor]];
	} else {
		[[cell contentView] setBackgroundColor:[UIColor redColor]];
	}
	
	return cell;
}


@end
