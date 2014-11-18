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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.mapView setImage:[UIImage imageNamed:@"mcmap"]];
    
    [self.scrollView setMaximumZoomScale:5.0f];
    [self.scrollView setClipsToBounds:YES];
    
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
