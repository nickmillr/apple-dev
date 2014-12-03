//
//  MapViewController.m
//  Pioneer Planner
//
//  Created by Nicholas Miller on 11/12/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize scrollView = scrollView;
@synthesize mapView = mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *map = [UIImage imageNamed:@"mcmap.png"];
    self.mapView = [[UIImageView alloc] initWithImage:map];
    self.mapView.frame = (CGRect){.origin=CGPointMake(0.0f, 0.0f), .size=map.size};
    [self.scrollView addSubview:self.mapView];
    
    self.scrollView.contentSize = map.size;
    
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollViewDoubleTapped:)];
    doubleTapRecognizer.numberOfTapsRequired = 2;
    doubleTapRecognizer.numberOfTouchesRequired = 1;
    [self.scrollView addGestureRecognizer:doubleTapRecognizer];
    
    UITapGestureRecognizer *twoFingerTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollViewTwoFingerTapped:)];
    twoFingerTapRecognizer.numberOfTapsRequired = 1;
    twoFingerTapRecognizer.numberOfTouchesRequired = 2;
    [self.scrollView addGestureRecognizer:twoFingerTapRecognizer];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    CGRect scrollViewFrame = self.scrollView.frame;
    CGFloat scaleWidth = scrollViewFrame.size.width / self.scrollView.contentSize.width;
    CGFloat scaleHeight = scrollViewFrame.size.height / self.scrollView.contentSize.height;
    CGFloat minScale = MIN(scaleWidth, scaleHeight);
    self.scrollView.minimumZoomScale = minScale;
    
    self.scrollView.maximumZoomScale = 3.0f;
    self.scrollView.zoomScale = minScale;
    
    //[self centerScrollViewContents];
    //http://www.raywenderlich.com/10518/how-to-use-uiscrollview-to-scroll-and-zoom-content
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.mapView;
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
