//
//  StudentTableViewController.m
//  ClassRoster
//
//  Created by Nicholas Miller on 10/10/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import "StudentTableViewController.h"

@interface StudentTableViewController () {
    
    NSMutableArray *students;
}

@end

@implementation StudentTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create student array
    // Here we make an array of the students and their respective information and pic ID
    
    students = [[NSMutableArray alloc] init];
    Roster* student = [[Roster alloc] init];
    student.name = @"Cameron Johnson";
    student.major = @"Information Systems";
    student.email = @"cbj001@marietta.edu";
    student.residenthall = @"Fayerweather Hall";
    student.company = @"UPMC";
    student.photoname = @"cameron";
    student.profile = @"I like fruit.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Devin Wysni";
    student.major = @"Information Systems";
    student.email = @"dnw001@marietta.edu";
    student.residenthall = @"Harrison Hall";
    student.company = @"Google";
    student.photoname = @"devin";
    student.profile = @"I'm from Pittsburgh, Pa. I'm very family oriented and spend most of my time with them. I have a dog, cat and a turtle. Also, I plan to study abroad in Spain this summer.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Emerald Demor";
    student.major = @"Information Systems";
    student.email = @"erd002@marietta.edu";
    student.residenthall = @"McCoy Hall";
    student.company = @"My Own Company";
    student.photoname = @"emerald";
    student.profile = @"I am from Rocky River, Ohio (a suburb of Cleveland). I am majoring in Information Systems and minoring in Leadership, English, and Biology. I like to do things that involve imagination (reading, writing, playing video games). I am also a big fan of the Oxford Comma but feel unsure about using it because of its lack of prevalence in our society. ";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Garrett Stephenson";
    student.major = @"Information Systems";
    student.email = @"gks001@marietta.edu";
    student.residenthall = @"McCoy Hall";
    student.company = @"Microsoft";
    student.photoname = @"garrett";
    student.profile = @"I am a senior on the Marietta Men's Basketball team. I'm from the small town of West Milton, Ohio.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Hao Fu";
    student.major = @"Information Systems";
    student.email = @"hf001@marietta.edu";
    student.residenthall = @"Harrison Hall";
    student.company = @"Alibaba";
    student.photoname = @"haofu";
    student.profile = @"I am from Chengdu, China. I was a transfer from Donghua University in Shanghai to Marietta College two year ago. I am majoring Information Systems and I am going to graduate school next year. Totally a big basketball fan and my favorite player is Chris Paul from Los Angeles Clippers.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Kurt Fire";
    student.major = @"Political Science";
    student.email = @"klf002@marietta.edu";
    student.residenthall = @"Fayerweather Hall";
    student.company = @"NASA";
    student.photoname = @"kurt";
    student.profile = @"I am a senior from Tallmadge, Ohio. I hope to pursue a career as a City Manager after undergraduate and graduate school. I am involved with the Student Government Association, College Democrats, The Alliance, and Model UN. My major is political science, with minors in information systems, psychology, and astronomy. I love tacos.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Nan Zhao";
    student.major = @"Information System";
    student.email = @"nz001@marietta.edu";
    student.residenthall = @"McCoy Hall";
    student.company = @"Alibaba";
    student.photoname = @"nan";
    student.profile = @"I'm from Beijing, China. I'm an IS senior at Marietta College. I used to major in golf skills and management in China. I love needle work, cooking, and traveling. I'm also interested in the issues of diversity and social justice.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Nicholas Miller";
    student.major = @"Physics";
    student.email = @"Nam002@marietta.edu";
    student.residenthall = @"Fayerweather Hall";
    student.company = @"SpaceX";
    student.photoname = @"nickm";
    student.profile = @"I am a senior and plan to graduate in May. I hope to attend graduate school for Astronomy. At Marietta I am a varsity Track & Field athlete. I am also the ACC of fourth street.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"NanFu Wen";
    student.major = @"Physics & Math";
    student.email = @"nw002@marietta.edu";
    student.residenthall = @"Off campus";
    student.company = @"Undecided";
    student.photoname = @"nanfu";
    student.profile = @"I'm a international student from Beijing, China. I like music, reading and travel. I'm interesting in neuroscience and trying to get into a graduate program in that area..";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Rick Martin";
    student.major = @"Information Systems";
    student.email = @"ram007@marietta.edu";
    student.residenthall = @"Off campus";
    student.company = @"Rattlesn@ke Games (c) 2014";
    student.photoname = @"rick";
    student.profile = @"I'm currently a programmer at Marietta College. I started working here two years ago. I've also done design work in the video game, board game, and table top roleplaying-game industries. I've done web design, photography, and over a decade of martial arts training. I'm a husband, and father.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Wentao Ma";
    student.major = @"Information system";
    student.email = @"wm002@marietta.edu";
    student.residenthall = @"McCoy Hall";
    student.company = @"Alibaba";
    student.photoname = @"wentao";
    student.profile = @"I am  senior from Shanghai,China. My goal for this year is being enrolled by a graduate school.";
    [students addObject:student];
    
    student = [[Roster alloc] init];
    student.name = @"Yiqi Shi";
    student.major = @"Accounting";
    student.email = @"ys004@marietta.edu";
    student.residenthall = @"Fayerweather Hall";
    student.company = @"Google";
    student.photoname = @"yiqi";
    student.profile = @"I am a seninor with Accounting major and Information systems minor. I'm from Beijing. This is the last semester I study in Marietta College. Right now I am planning to go to a graduate school after I graduate from Marietta College.";
    [students addObject:student];
    

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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return students.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCell" forIndexPath:indexPath];
    // Configure the cell...
    
    Roster *current = [students objectAtIndex:indexPath.row];
    cell.textLabel.text = current.name;
    
    return cell;
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Get the new view controller using [segue destinationViewController].
    PhotoViewController *photovc = [segue destinationViewController];
    
    // Pass the selected object to the new view controller.
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    Roster *selectedStudent = students[path.row];
    photovc.currentStudent = selectedStudent;
    
}


@end
