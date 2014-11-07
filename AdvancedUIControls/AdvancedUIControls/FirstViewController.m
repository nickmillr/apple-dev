//
//  FirstViewController.m
//  AdvancedUIControls
//
//  Created by Nicholas Miller on 11/5/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)displayButton:(id)sender {
    // Grab the value from the date picker
    
    NSDate *chosenDate = self.datePicker.date;
    //NsDate *chosenDate1 = [self.datePicker date];
    
    // Applying date format for the selected date
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE, MMMM dd,yyyy hh:mm a"];
    NSString *weekDay = [formatter stringFromDate:chosenDate];
    
    // Generate Message
    NSString *displayMsg = [[NSString alloc] initWithFormat:@"Your selected day is %@",weekDay];
    
    // Output message
    UIAlertView *outputMsg = [[UIAlertView alloc] initWithTitle:@"The day of the week for your date:" message:displayMsg delegate:nil cancelButtonTitle:@"Thanks!" otherButtonTitles:nil];
    [outputMsg show];
    
}

@end
