//
//  ResultViewController.m
//  HardwoodCost
//
//  Created by Nicholas Miller on 10/12/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //WHY WONT IT CARRY OVER THE VALUES!!!
    [self.widthLabel setFont:[UIFont systemFontOfSize:14]];
    self.widthLabel.text = [NSString stringWithFormat:@"$%.2f", self.currentValues.width];
    
    [self.lengthLabel setFont:[UIFont systemFontOfSize:14]];
    self.lengthLabel.text = [NSString stringWithFormat:@"$%.2f", self.currentValues.length];
    
    [self.costLabel setFont:[UIFont systemFontOfSize:14]];
    self.costLabel.text = [NSString stringWithFormat:@"$%.2f", self.currentValues.cost];
    
    [self.totalLabel setFont:[UIFont systemFontOfSize:14]];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", self.currentValues.total];
    
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

@end
