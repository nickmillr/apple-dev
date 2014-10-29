//
//  ResultViewController.h
//  HardwoodCost
//
//  Created by Nicholas Miller on 10/12/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Flooring.h"

@interface ResultViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *widthLabel;
@property (weak, nonatomic) IBOutlet UILabel *lengthLabel;
@property (weak, nonatomic) IBOutlet UILabel *costLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property (nonatomic) Flooring *currentValues;

@end
