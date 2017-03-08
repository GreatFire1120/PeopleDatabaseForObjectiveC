//
//  main.m
//  PeopleDatabase
//
//  Created by Admin on 1/23/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        char response;
        
        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        do {
            Person *newPerson = [[Person alloc] init];
            [newPerson enterInfo];
            [newPerson printInfo];
            [people addObject:newPerson];
            
            NSLog(@"Do you want to enter another name? (y/n)");
            scanf("\n%c", &response);
        } while(response == 'y');
        
        NSLog(@"Number of people in the database: %li", [people count]);
        
        for (Person *onePerson in people) {
            [onePerson printInfo];
        }
    }
    
    return 0;
}
