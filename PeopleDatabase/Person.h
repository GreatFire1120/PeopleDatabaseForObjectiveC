//
//  Person.h
//  PeopleDatabase
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {

NSString *firstName;
NSString *lastName;
int age;

}

- (void)enterInfo;
- (void)printInfo;

@end
