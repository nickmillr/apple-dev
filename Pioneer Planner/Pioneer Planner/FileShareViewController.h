//
//  FileShareViewController.h
//  Pioneer Planner
//
//  Created by Nicholas Miller on 12/3/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FileShareViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tblFiles;

@end
