//
//  DisplayViewController.h
//  PhotoViewer
//
//  Created by Jeremy Wang on 9/24/14.
//  Copyright (c) 2014 Jeremy Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import "InfoViewController.h"


@interface DisplayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *displayImage;
@property (nonatomic) Photo *currentPhoto;

@end
