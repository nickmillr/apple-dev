//
//  AppDelegate.h
//  Pioneer Planner
//
//  Created by Nicholas Miller on 11/12/14.
//  Copyright (c) 2014 Nicholas Miller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MCManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) MCManager *mcManager;

@end

