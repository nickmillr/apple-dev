//
//  ProfileViewController.m
//  ClassRoster
//
//  Created by Nicholas Miller on 10/10/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Here we set all the labels to their proper variable for that student
    
    [self.nameLabel setFont:[UIFont systemFontOfSize:18]];
    self.nameLabel.text = self.currentStudent.name;
    
    [self.majorLabel setFont:[UIFont systemFontOfSize:14]];
    self.majorLabel.text = self.currentStudent.major;
    
    [self.emailLabel setFont:[UIFont systemFontOfSize:14]];
    self.emailLabel.text = self.currentStudent.email;
    
    [self.companyLabel setFont:[UIFont systemFontOfSize:14]];
    self.companyLabel.text = self.currentStudent.company;
    
    [self.residenceLabel setFont:[UIFont systemFontOfSize:14]];
    self.residenceLabel.text = self.currentStudent.residenthall;
    
    [self.bioLabel setFont:[UIFont systemFontOfSize:12]];
    self.bioLabel.text = self.currentStudent.profile;
    
    UIImage *image = [UIImage imageNamed:self.currentStudent.photoname];
    [self.profileImage setImage:image];
    self.title = self.currentStudent.name;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)imageButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)sendMail:(id)sender {
    
// All samples of this code pop up an edit-able email, so I guess this simulator won't allow us to actually compose and email.
    
    // Email Subject
    NSString *emailTitle = @"Email Student";
    // Email Content
    NSString *messageBody = @"iOS programming is so fun!";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"student@marietta.edu"];
        
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
        
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
        
}
    
- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    switch (result){
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
        
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
