//
//  Prog18_1.m
//  Chapter 18
//
//  Created by NyCtoMitU on 3/1/13.
//  Copyright (c) 2013 ClassroomM. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray          *dataArray = [NSMutableArray arrayWithObjects: @"one", @"two", @"three", @"four", nil];
        NSMutableArray          *dataArray2;
        
        // Simple assignment
        
        dataArray2 = dataArray;
        [dataArray2 removeObjectAtIndex: 0];
        
        NSLog(@"dataArray:  ");
        for (NSString *elem in dataArray)
            NSLog(@"   %@", elem);
        
        NSLog(@"dataArray2:  ");
        
        for (NSString *elem in dataArray2)
            NSLog(@"   %@", elem);
        
        // try a copy, then remove the first element from the copy
        
        dataArray2 = [dataArray mutableCopy];
        [dataArray2 removeObjectAtIndex: 0];
        
        NSLog(@"dataArray:  ");
        
        for (NSString *elem in dataArray)
            NSLog(@"   %@", elem);
        
        NSLog(@"dataArray2:  ");
        
        for (NSString *elem in dataArray2)
            NSLog(@"   %@", elem);
        
    }
    return 0;
}

