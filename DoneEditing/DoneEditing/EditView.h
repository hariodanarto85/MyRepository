//
//  EditView.h
//  DoneEditing
//
//  Created by Kandrick Tang on 7/16/11.
//  Copyright 2011 WALDEN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DoneEditingAppDelegate.h"


@interface EditView : UIViewController {
   // DoneEditingAppDelegate *users;
}

@property (nonatomic, retain) IBOutlet UITextField *nameField;
@property (nonatomic, retain) IBOutlet UITextField *alamatField;
@property (nonatomic, retain) IBOutlet UIButton *saveButton;

- (IBAction) doneEditing:(id)sender;
- (IBAction) backgroundEditing:(id)sender;
- (IBAction) addUser;

@end
