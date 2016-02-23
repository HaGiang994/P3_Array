//
//  main.m
//  MaxValueOfArray
//
//  Created by MacPro1 on 2/23/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleClass : NSObject
- (NSInteger) maxValueOfArray: (NSArray *)array;
@end

@implementation SimpleClass
- (NSInteger) maxValueOfArray: (NSArray *)array {
    NSInteger maxValue = [[array objectAtIndex:0] intValue];
    NSInteger numberOfElements = [array count];
    for (int i = 1; i < numberOfElements; i ++ ) {
        if (maxValue < [[array objectAtIndex:i] intValue]) {
            maxValue = [[array objectAtIndex:i] intValue];
        }
    }
    return maxValue;
}
@end

int main(int argc, const char * argv[]) {
    NSArray *array = @[@1,@2,@3,@4,@5,@6,@8,@9,@100,@120,@99,@98];
    SimpleClass *simpleClass = [SimpleClass alloc];
    NSLog(@"The max value of array is: %ld",[simpleClass maxValueOfArray:array]);
    return 0;
}
