//
//  DisplayViewController.m
//  PhotoViewer
//
//  Created by Jeremy Wang on 9/24/14.
//  Copyright (c) 2014 Jeremy Wang. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *image = [UIImage imageNamed:self.currentPhoto.filename];
    [self.displayImage setImage:image];
    self.title= self.currentPhoto.name;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    InfoViewController *ivc = [segue destinationViewController];
    ivc.currentPhoto = self.currentPhoto;
    
    
    // Pass the selected object to the new view controller.
}


@end
