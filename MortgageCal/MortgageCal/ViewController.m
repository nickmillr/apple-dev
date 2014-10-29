//
//  ViewController.m
//  MortgageCal
//
//  Created by Jeremy Wang on 9/10/14.
//  Copyright (c) 2014 Jeremy Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
}



- (IBAction)calButton:(id)sender {
    //Step 1. Data validation
        //1.1 declare 2 variables for error checking
    NSString *errorMessage = nil;
    UITextField *errorField = nil;
    
        //1.2 check which field is empty?
    if ([self.loanTextBox.text isEqual:@""]) {
        errorMessage= @"Please enter your loan amount!";
        errorField = self.loanTextBox;
    }else if([self.downPaymentTextBox.text isEqual:@""]){
        errorMessage= @"Please enter your down payment percentage!";
        errorField = self.downPaymentTextBox;
    
    }
    
       //1.3 Generate error message using the UIAlertView Class
    
    if (errorMessage) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Input is required!" message:errorMessage delegate:nil cancelButtonTitle:@"OK"otherButtonTitles:nil];
        [alert show];
        [errorField becomeFirstResponder];
    }
    
    
    //Step 2. Check user location and calculate accordingly
         //Grab the values from the input boxes
    double loanAmount = self.loanTextBox.text.doubleValue;
    double downPaymentPercentage = self.downPaymentTextBox.text.doubleValue/100;
    double downPaymentAmount = 0;
    
    if (self.ohioSwitch.on)
    {
        downPaymentAmount = loanAmount * downPaymentPercentage * (1-0.1);
    }else{
        
        downPaymentAmount = loanAmount * downPaymentPercentage;
    }
   
    //NSNumberFormatter * formatter = [[NSFormatter alloc] init];
    //[formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    
    
    //Step 3. Display result to the user
    self.resultMsgLabel.text = [@"Your down payment amount is: " stringByAppendingString:[NSString localizedStringWithFormat:@"$ %.2f", downPaymentAmount]];
    
    
}
@end
