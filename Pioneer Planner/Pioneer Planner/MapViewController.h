//
//  MapViewController.h
//  Pioneer Planner
//
//  Created by Nicholas Miller on 11/12/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong) IBOutlet UIImageView *mapView;
- (void)centerScrollViewContents;
- (void)scrollViewDoubleTapped:(UITapGestureRecognizer*)recognizer;
- (void)scrollViewTwoFingerTapped:(UITapGestureRecognizer*)recognizer;

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;

@end
