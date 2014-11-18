//
//  MapViewController.h
//  Pioneer Planner
//
//  Created by Nicholas Miller on 11/12/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *mapView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end
