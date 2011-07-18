//
//  DoneEditingAppDelegate.h
//  DoneEditing
//
//  Created by Kandrick Tang on 7/16/11.
//  Copyright 2011 WALDEN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface DoneEditingAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) NSMutableArray *users;

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
