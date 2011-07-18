//
//  EditView.m
//  DoneEditing
//
//  Created by Kandrick Tang on 7/16/11.
//  Copyright 2011 WALDEN. All rights reserved.
//

#import "EditView.h"
#import "RootViewController.h"
#import "User.h"

@implementation EditView

@synthesize nameField;
@synthesize alamatField;  
@synthesize saveButton;

- (IBAction)doneEditing:(id)sender
{
    [self resignFirstResponder];
}

- (IBAction)backgroundEditing:(id)sender
{
    [nameField resignFirstResponder];
    [alamatField resignFirstResponder];
}

- (IBAction)addUser
{
    User *newuser = [[User alloc] init];
    newuser.nama = self.nameField.text;
    newuser.alamat = self.alamatField.text;
    
    DoneEditingAppDelegate *appDelegate = (DoneEditingAppDelegate *)[[UIApplication sharedApplication] delegate];
    NSLog(@"Nama : %@", newuser.nama);
    NSLog(@"Alamat : %@", newuser.alamat);
    [appDelegate.users addObject:newuser];
    [newuser release];
    [self.navigationController popViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [saveButton release];
    [nameField release];
    [alamatField release]; 
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(backView)];
    self.navigationItem.rightBarButtonItem = backButton;
    [backButton release];
    // Do any additional setup after loading the view from its nib.
}

- (void)backView
{
    RootViewController *back = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
    [self.navigationController pushViewController:back animated:YES];
    [back release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.nameField = nil;
    self.alamatField = nil;
    self.saveButton = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
