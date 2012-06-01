//
//  SquareDetailsViewController.m
//  EmployeeTable
//
//  Created by Mustafa Furniturewala on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareDetailsViewController.h"
#import "SquareEmployee.h"

@interface SquareDetailsViewController ()

@end

@implementation SquareDetailsViewController
@synthesize labelJobTitle = _labelJobTitle;
@synthesize employee = _employee;
@synthesize lableDateOfBirth = _lableDateOfBirth;
@synthesize labelNumberOfYears = _labelNumberOfYears;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self labelJobTitle] setText:[[self employee] jobTitle]];
    NSString *numberOfYears = [NSString stringWithFormat:@"%d years",[[self employee] numberOfYears]];
    [[self labelNumberOfYears] setText:numberOfYears];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSString* dateOfBirth = [dateFormatter stringFromDate:[[self employee] dateOfBirth]];
    [[self lableDateOfBirth] setText:dateOfBirth];
    [[self navigationItem] setTitle:[[self employee] name]];
}

- (void)viewDidUnload
{
    [self setLabelJobTitle:nil];
    [self setLableDateOfBirth:nil];
    [self setLabelNumberOfYears:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
