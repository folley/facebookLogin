//
//  FLFejsLoginViewController.h
//  SocialLeisure
//
//  Created by Maciej Lobodzinski on 26.12.2012.
//  Copyright (c) 2012 Maciej Lobodzinski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FLFejsLoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *facebookLoginButton;
- (IBAction)loginButtonTapped:(id)sender;

@end
