//
//  RegisterTableViewController.m
//  Pioneer Planner
//
//  Created by Nicholas Miller on 12/2/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "RegisterTableViewController.h"

@interface RegisterTableViewController ()

@end

@implementation RegisterTableViewController {
    
    NSDictionary *acctCourseDetails;
    NSArray *acctCourses;
    
    NSDictionary *asnCourseDetails;
    NSArray *asnCourses;

    NSDictionary *astrCourseDetails;
    NSArray *astrCourses;

    NSDictionary *chinCourseDetails;
    NSArray *chinCourses;
    
    NSDictionary *dancCourseDetails;
    NSArray *dancCourses;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create the URL path and Load the plist into the dictionary
    NSURL *urlACCT = [[NSBundle mainBundle] URLForResource:@"ACCT" withExtension:@".plist"];
    acctCourseDetails = [NSDictionary dictionaryWithContentsOfURL:urlACCT];
    // Get the keys of the dictionary - course names
    acctCourses = acctCourseDetails.allKeys;
    
    
    // Load ASN courses the same way
    NSURL *urlASN = [[NSBundle mainBundle] URLForResource:@"ASN" withExtension:@".plist"];
    asnCourseDetails = [NSDictionary dictionaryWithContentsOfURL:urlASN];
    asnCourses = asnCourseDetails.allKeys;
    
    // Load ASTR courses the same way
    NSURL *urlASTR = [[NSBundle mainBundle] URLForResource:@"ASTR" withExtension:@".plist"];
    astrCourseDetails = [NSDictionary dictionaryWithContentsOfURL:urlASTR];
    astrCourses = astrCourseDetails.allKeys;
    
    // Load CHIN courses the same way
    NSURL *urlCHIN = [[NSBundle mainBundle] URLForResource:@"CHIN" withExtension:@".plist"];
    chinCourseDetails = [NSDictionary dictionaryWithContentsOfURL:urlCHIN];
    chinCourses = chinCourseDetails.allKeys;
    
    // Load DANC courses the same way
    NSURL *urlDANC = [[NSBundle mainBundle] URLForResource:@"DANC" withExtension:@".plist"];
    dancCourseDetails = [NSDictionary dictionaryWithContentsOfURL:urlDANC];
    dancCourses = dancCourseDetails.allKeys;
    
    
    
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
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //Determine which section for the row numbers
    if (section == 0){
        // Return the number of rows in the mobile courses.
        return acctCourseDetails.count;
    }else if (section == 1){
        // Return the number of rows in the web courses.
        return asnCourseDetails.count;
    }else if (section == 2){
        // Return the number of rows in the web courses.
        return astrCourseDetails.count;
    }else if (section == 3){
        // Return the number of rows in the web courses.
        return chinCourseDetails.count;
    }else{
        // Return the number of rows in the web courses.
        return dancCourseDetails.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CourseCell" forIndexPath:indexPath];
    
    // Configure the cell...
    if (indexPath.section == 0){
        cell.textLabel.text = acctCourses[indexPath.row];
        // set the subtitle value
        cell.detailTextLabel.text = acctCourseDetails[acctCourses[indexPath.row]];
    }else if (indexPath.section == 1){
        cell.textLabel.text = asnCourses[indexPath.row];
        cell.detailTextLabel.text = asnCourseDetails[asnCourses[indexPath.row]];
    }else if (indexPath.section == 2){
        cell.textLabel.text = astrCourses[indexPath.row];
        cell.detailTextLabel.text = astrCourseDetails[astrCourses[indexPath.row]];
    }else if (indexPath.section == 3){
        cell.textLabel.text = chinCourses[indexPath.row];
        cell.detailTextLabel.text = chinCourseDetails[chinCourses[indexPath.row]];
    }else{
        cell.textLabel.text = dancCourses[indexPath.row];
        cell.detailTextLabel.text = dancCourseDetails[dancCourses[indexPath.row]];
    }
    
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0){
        return @"ACCT";
    }else if (section == 1){
        return @"ASN";
    }else if (section == 2){
        return @"ASTR";
    }else if (section == 3){
        return @"CHIN";
    }else{
        return @"DANC";
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
