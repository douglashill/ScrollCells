//
//  ScrollCellsAppDelegate.m
//  Douglas Hill, March 2012
//  https://github.com/douglashill/ScrollCells
//

#import "ScrollCellsAppDelegate.h"
#import "ScrollCellsTableViewController.h"

@implementation ScrollCellsAppDelegate
@synthesize window = _window;

- (void)dealloc
{
	[_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
	self.window.backgroundColor = [UIColor redColor];
	
	ScrollCellsTableViewController *tvc = [[[ScrollCellsTableViewController alloc]
											init] autorelease];
	UINavigationController *navContr = [[[UINavigationController alloc]
										 initWithRootViewController:tvc] autorelease];
	[[self window] setRootViewController:navContr];
	
	[self.window makeKeyAndVisible];
	return YES;
}


@end
