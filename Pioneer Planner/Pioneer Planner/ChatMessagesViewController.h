//
//  ChatMessagesViewController.h
//  Pioneer Planner
//
//  Created by Nicholas Miller on 12/3/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatMessagesViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtMessage;
@property (weak, nonatomic) IBOutlet UITextView *tvChat;


- (IBAction)sendMessage:(id)sender;
- (IBAction)cancelMessage:(id)sender;

@end
