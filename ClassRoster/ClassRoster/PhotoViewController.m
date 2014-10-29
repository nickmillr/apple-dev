//
//  PhotoViewController.m
//  ClassRoster
//
//  Created by Nicholas Miller on 10/13/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Here we display the image for the student chosen from the list
    
    UIImage *image = [UIImage imageNamed:self.currentStudent.photoname];
    [self.imageDisplay setImage:image];
    self.title = self.currentStudent.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    ProfileViewController *profilevc = [segue destinationViewController]; // profilevc = Profile View Controller
    profilevc.currentStudent = self.currentStudent;
}

@end
