//
//  User.m
//  DoneEditing
//
//  Created by Kandrick Tang on 7/16/11.
//  Copyright 2011 WALDEN. All rights reserved.
//

#import "User.h"


@implementation User

@synthesize nama;
@synthesize alamat;

- (void)dealloc
{
    [nama release];
    [alamat release];
    [super dealloc];
}

@end
