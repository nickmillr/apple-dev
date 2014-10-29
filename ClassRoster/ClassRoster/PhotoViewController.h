//
//  PhotoViewController.h
//  ClassRoster
//
//  Created by Nicholas Miller on 10/13/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Roster.h"
#import "ProfileViewController.h"

@interface PhotoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageDisplay;
@property (nonatomic) Roster *currentStudent;


@end
