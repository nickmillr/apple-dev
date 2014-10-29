//
//  InputViewController.h
//  HardwoodCost
//
//  Created by Nicholas Miller on 10/12/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Flooring.h"
#import "ResultViewController.h"

@interface InputViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *widthTextField;
@property (weak, nonatomic) IBOutlet UITextField *lengthTextField;
@property (weak, nonatomic) IBOutlet UITextField *costTextField;
- (IBAction)calculateButton:(id)sender;

@end
