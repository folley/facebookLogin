//
//  FLFejsLoginViewController.m
//  SocialLeisure
//
//  Created by Maciej Lobodzinski on 26.12.2012.
//  Copyright (c) 2012 Maciej Lobodzinski. All rights reserved.
//

#import "FLFejsLoginViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import "FLAppDelegate.h"

@interface FLFejsLoginViewController () <FBLoginViewDelegate>

@end

@implementation FLFejsLoginViewController

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
    
    FBLoginView *loginview = [[FBLoginView alloc] init];
    
    loginview.frame = CGRectOffset(loginview.frame, 5, 5);
    loginview.delegate = self;
    
    [self.view addSubview:loginview];
    
    [loginview sizeToFit];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonTapped:(id)sender
{
    FLAppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    UIViewController *topViewController = [appDelegate.navController topViewController];
    
    FBUserSettingsViewController *viewControllerSettings;

    viewControllerSettings = [[FBUserSettingsViewController alloc] init];
    viewControllerSettings.title = @"Facebook Settings";
    
    
    [appDelegate.navController pushViewController:viewControllerSettings animated:YES];
   // [appDelegate.navController presentViewController:viewControllerSettings animated:YES completion:nil];
    [appDelegate.navController setNavigationBarHidden:YES];
    //[topViewController presentViewController:viewControllerSettings animated:YES completion:nil];
}

    
@end
