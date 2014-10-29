//
//  ProfileViewController.h
//  ClassRoster
//
//  Created by Nicholas Miller on 10/10/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Roster.h"
#import <MessageUI/MessageUI.h>

@interface ProfileViewController : UIViewController<MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *majorLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *residenceLabel;
@property (weak, nonatomic) IBOutlet UILabel *companyLabel;
@property (weak, nonatomic) IBOutlet UILabel *bioLabel;

- (IBAction)imageButton:(id)sender;
- (IBAction)sendMail:(id)sender;

@property (nonatomic) Roster *currentStudent;

@end
