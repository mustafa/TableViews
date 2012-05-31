//
//  SquareEmployee.h
//  EmployeeTable
//
//  Created by Mustafa Furniturewala on 5/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SquareEmployee : NSObject
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* jobTitle;
@property (nonatomic, strong) NSDate* dateOfBirth;
@property (nonatomic, assign) NSInteger numberOfYears;
@property (nonatomic, strong) UIImage* profilePicture;


// designated initializer
- (id)initWithName:(NSString*) name jobTitle:(NSString*)jobTitle dateOfBirth:(NSDate*)dob numberOfYears:(NSInteger)years profilePicture:(UIImage*)picture;

@end
