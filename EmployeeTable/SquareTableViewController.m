//
//  SquareTableViewController.m
//  EmployeeTable
//
//  Created by Mustafa Furniturewala on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareTableViewController.h"
#import "SquareEmployee.h"
#import "SquareDetailsViewController.h"

@interface SquareTableViewController ()

@end

@implementation SquareTableViewController

@synthesize dataSource = _dataSource;

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
    
    UIImage *picture = [UIImage imageNamed:@"steve.jpeg"];
    SquareEmployee* employee1 = [[SquareEmployee alloc] initWithName:@"Mark H." 
                                                            jobTitle:@"CEO" 
                                                         dateOfBirth:[NSDate dateWithTimeIntervalSince1970:NSTimeIntervalSince1970]  
                                                       numberOfYears:2 
                                                      profilePicture:picture];
    
    SquareEmployee* employee2 = [[SquareEmployee alloc] initWithName:@"John S." 
                                                            jobTitle:@"Engineer" 
                                                         dateOfBirth:[NSDate dateWithTimeIntervalSince1970:50000]  
                                                       numberOfYears:5
                                                      profilePicture:picture];
    
    SquareEmployee* employee3 = [[SquareEmployee alloc] initWithName:@"Bob Ray" 
                                                            jobTitle:@"Sr. Engineer" 
                                                         dateOfBirth:[NSDate dateWithTimeIntervalSince1970:2000]  
                                                       numberOfYears:9
                                                      profilePicture:picture];
    
    SquareEmployee* employee4 = [[SquareEmployee alloc] initWithName:@"Eminem" 
                                                            jobTitle:@"Engineer" 
                                                         dateOfBirth:[NSDate dateWithTimeIntervalSince1970:3430000]  
                                                       numberOfYears:1
                                                      profilePicture:picture];
    
    NSArray* employees = [NSArray arrayWithObjects:employee1,employee2,employee3,employee4, nil];
    
    [self setDataSource:employees];
        
    [[self tableView] reloadData];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[self dataSource] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"EmployeeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if([self dataSource])
    {
        SquareEmployee *employee = [[self dataSource] objectAtIndex:[indexPath row]];
        [[cell textLabel] setText:[employee name]];
        [[cell imageView] setImage:[employee profilePicture]];
    }
    return cell;
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"EmployeeToDetail"])
    {
       SquareDetailsViewController *detailViewController = [segue destinationViewController];
       NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        SquareEmployee* employee = [[self dataSource] objectAtIndex:[indexPath row]];
       [detailViewController setEmployee:employee];
       
        
    }
}

@end
