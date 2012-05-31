//
//  SquareDetailsViewController.h
//  EmployeeTable
//
//  Created by Mustafa Furniturewala on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SquareEmployee;

@interface SquareDetailsViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *labelJobTitle;
@property (strong, nonatomic) SquareEmployee* employee;
@property (weak, nonatomic) IBOutlet UILabel *lableDateOfBirth;
@property (weak, nonatomic) IBOutlet UILabel *labelNumberOfYears;
@end
