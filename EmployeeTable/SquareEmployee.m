//
//  SquareEmployee.m
//  EmployeeTable
//
//  Created by Mustafa Furniturewala on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareEmployee.h"

@implementation SquareEmployee

@synthesize name = _name;
@synthesize jobTitle = _jobTitle;
@synthesize dateOfBirth = _dateOfBirth;
@synthesize numberOfYears = _numberOfYears;
@synthesize profilePicture = _profilePicture;


// Designated initializer

- (id)initWithName:(NSString*) name jobTitle:(NSString*)jobTitle dateOfBirth:(NSDate*)dob numberOfYears:(NSInteger)years profilePicture:(UIImage*)picture
{
    if(self = [super init])
    {
        [self setName:name];
        [self setJobTitle:jobTitle];
        [self setDateOfBirth:dob];
        [self setNumberOfYears:years];
        [self setProfilePicture:picture];
    }
    return self;
}
@end
