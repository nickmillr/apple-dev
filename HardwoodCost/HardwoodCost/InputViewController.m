//
//  InputViewController.m
//  HardwoodCost
//
//  Created by Nicholas Miller on 10/12/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()

@end

@implementation InputViewController{
    //NSMutableArray *results;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Error Checking
    NSString *errorMessage = nil;
    UITextField *errorField = nil;
    
    // Which field is empty?
    if ([self.widthTextField.text isEqual:@""]) {
        errorMessage= @"Please enter your Room Width!";
        errorField = self.widthTextField;
    }else if([self.lengthTextField.text isEqual:@""]){
        errorMessage= @"Please enter your Room Length!";
        errorField = self.lengthTextField;
    }else if([self.costTextField.text isEqual:@""]){
        errorMessage= @"Please enter your cost!";
        errorField = self.costTextField;
    }
    
    // Generate ErrorMessage using the UIAlertView Class
    
    if (errorMessage) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Input is required!" message:errorMessage delegate:nil cancelButtonTitle:@"OK"otherButtonTitles:nil];
        [alert show];
        [errorField becomeFirstResponder];
    }
    
    // Calculate
    //results = [[NSMutableArray alloc] init];
    Flooring *attribute = [[Flooring alloc] init];
    double width = [self.widthTextField.text doubleValue];
    double length = [self.lengthTextField.text doubleValue];
    double cost = [self.costTextField.text doubleValue];
    
    attribute.width = width;
    attribute.length = length;
    attribute.cost = cost;
    
    double total = (((length*width)*1.20)*cost);
    attribute.total = total;
    
    
    
    // Get the new view controller using [segue destinationViewController].
    
    ResultViewController *rvc = [segue destinationViewController];
    
    // Pass the selected object to the new view controller.
    rvc.currentValues = attribute;
    
}


- (IBAction)calculateButton:(id)sender {

}
@end
