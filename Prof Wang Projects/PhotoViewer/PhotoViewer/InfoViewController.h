//
//  InfoViewController.h
//  PhotoViewer
//
//  Created by Jeremy Wang on 9/24/14.
//  Copyright (c) 2014 Jeremy Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface InfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;
- (IBAction)doneButton:(id)sender;

@property (nonatomic) Photo *currentPhoto;

@end
