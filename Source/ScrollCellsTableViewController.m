//
//  ScrollCellsTableViewController.m
//  Douglas Hill, March 2012
//  https://github.com/douglashill/ScrollCells
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
	return 17;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (!cell) {
		NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:@"ScrollingCell"
															 owner:self
														   options:nil];
		cell = [nibContents objectAtIndex:0];
		UIView *content = [nibContents objectAtIndex:1];
		UIScrollView *scrollView = (UIScrollView *)[cell viewWithTag:1];
		[scrollView addSubview:content];
		[scrollView setContentSize:[content frame].size];
	}
	
	[(UIScrollView *)[cell viewWithTag:1] setContentOffset:CGPointZero];
	return cell;
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
