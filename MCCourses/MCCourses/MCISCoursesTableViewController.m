//
//  MCISCoursesTableViewController.m
//  MCCourses
//
//  Created by Nicholas Miller on 11/19/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "MCISCoursesTableViewController.h"

@interface MCISCoursesTableViewController ()

@end

@implementation MCISCoursesTableViewController{
    
    NSDictionary *mobileCoursesDetails;
    NSArray *mobileCoursesNames;
    
    NSDictionary *webCoursesDetails;
    NSArray *webCoursesNames;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create the URL path and Load the plist into the dictionary
    NSURL *urlMobile = [[NSBundle mainBundle] URLForResource:@"courses_mobile" withExtension:@".plist"];
    mobileCoursesDetails = [NSDictionary dictionaryWithContentsOfURL:urlMobile];
    
    // Get the keys of the dictionary - course names
    mobileCoursesNames = mobileCoursesDetails.allKeys;
    
    
    // Load web cousre the same way
    NSURL *urlweb = [[NSBundle mainBundle] URLForResource:@"courses_mobile" withExtension:@".plist"];
    webCoursesDetails = [NSDictionary dictionaryWithContentsOfURL:urlweb];
    webCoursesNames = webCoursesDetails.allKeys;
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //Determine which section for the row numbers
    if (section == 0){
        // Return the number of rows in the mobile courses.
        return mobileCoursesDetails.count;
    }else{
        // Return the number of rows in the web courses.
        return webCoursesDetails.count;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CourseCell" forIndexPath:indexPath];
    
    // Set the image for the table cell
    if (indexPath.section == 1){
        UIImage *cellImage = [UIImage imageNamed:@"CourseIcon"];
        [cell.imageView setImage:cellImage];
    }
    
    // Configure the cell...
    if (indexPath.section == 0){
        cell.textLabel.text = mobileCoursesNames[indexPath.row];
        // set the subtitle value
        cell.detailTextLabel.text = mobileCoursesDetails[mobileCoursesNames[indexPath.row]];
    }else{
        cell.textLabel.text = webCoursesNames[indexPath.row];
        cell.detailTextLabel.text = webCoursesDetails[webCoursesNames[indexPath.row]];
    }
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0){
        return @"MC Mobile Courses SP15";
    }else{
        return @"MC Web Courses SP15";
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
