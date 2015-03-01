//
//  MainViewController.m
//  2storyboard
//
//  Created by benlu on 9/8/13.
//  Copyright (c) 2013 benlu. All rights reserved.
//

#import "MainViewController.h"
#import "test1.h"
#import "test2.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_mybtn release];
    [super dealloc];
}

- (IBAction)mybtn_tui:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"訊息內容." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alert show];
    [alert release];
}

- (IBAction)mybtn2:(id)sender {
    UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"Storyboard2" bundle:nil];
    test2* test2obj = [secondStoryBoard instantiateViewControllerWithIdentifier:@"test2"];
    [self.navigationController pushViewController:test2obj animated:YES];


    
//    UIViewController *theTabBar = (UIViewController *)[secondStoryBoard instantiateViewControllerWithIdentifier:@"myTabBar"];
//    [self.navigationController pushViewController:theTabBar animated:YES];
    
    
    
    
    
    //    // Get the storyboard named secondStoryBoard from the main bundle:
    //    UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"secondStoryBoard" bundle:nil];
    //
    //    // Load the initial view controller from the storyboard.
    //    // Set this by selecting 'Is Initial View Controller' on the appropriate view controller in the storyboard.
    //    UIViewController *theInitialViewController = [secondStoryBoard instantiateInitialViewController];
    //    //
    //    // **OR**
    //    //
    //    // Load the view controller with the identifier string myTabBar
    //    // Change UIViewController to the appropriate class
    //    UIViewController *theTabBar = (UIViewController *)[secondStoryBoard instantiateViewControllerWithIdentifier:@"myTabBar"];
    //
    //    // Then push the new view controller in the usual way:
    //    [self.navigationController pushViewController:theTabBar animated:YES];
    
    

    
//    test1* test1obj = [self.storyboard instantiateViewControllerWithIdentifier:@"test1"];
//    [self.navigationController pushViewController:test1obj animated:YES];
    
}



@end
