//
//  SidebarViewController.m
//  Sidebar
//
//  Created by BJ Homer on 11/16/10.
//  Copyright 2010 BJ Homer. All rights reserved.
//

#import "SidebarViewController.h"

@implementation SidebarViewController
@synthesize sidebar = _sidebar;



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	_sidebar.delegate = self;
}



// Ensure that the view controller supports rotation and that the split view can therefore show in both portrait and landscape.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
    self.sidebar = nil;
}

-(NSUInteger)countOfImagesInSidebar:(HSSidebarView *)sidebar {
	return 30;
}

-(UIImage *)sidebar:(HSSidebarView *)sidebar imageForIndex:(NSUInteger)anIndex {
	switch (anIndex % 3) {
		case 0:
			return [UIImage imageNamed:@"Blue"];
			break;
		case 1:
			return [UIImage imageNamed:@"Red"];
			break;
		default:
			return [UIImage imageNamed:@"Green"];
			
	}
}


-(void)sidebar:(HSSidebarView *)sidebar didTapImageAtIndex:(NSUInteger)anIndex {
	NSLog(@"Touched selected image at index: %u", anIndex);
}

- (void)sidebar:(HSSidebarView *)sidebar didMoveImageAtIndex:(NSUInteger)oldIndex toIndex:(NSUInteger)newIndex {
	NSLog(@"Image at index %d moved to index %d", oldIndex, newIndex);
}

- (void)dealloc {
    [_sidebar release];
    [super dealloc];
}

@end
