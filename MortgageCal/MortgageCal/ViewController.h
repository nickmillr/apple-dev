//
//  ViewController.h
//  MortgageCal
//
//  Created by Jeremy Wang on 9/10/14.
//  Copyright (c) 2014 Jeremy Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *loanTextBox;
@property (weak, nonatomic) IBOutlet UITextField *downPaymentTextBox;
@property (weak, nonatomic) IBOutlet UISwitch *ohioSwitch;
@property (weak, nonatomic) IBOutlet UILabel *resultMsgLabel;

- (IBAction)calButton:(id)sender;

@end
