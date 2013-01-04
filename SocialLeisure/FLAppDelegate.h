//
//  FLAppDelegate.h
//  SocialLeisure
//
//  Created by Maciej Lobodzinski on 25.12.2012.
//  Copyright (c) 2012 Maciej Lobodzinski. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FLViewController;

@interface FLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navController;

- (void)openSession;

@end
