//
//  main.m
//  LastOddInArray
//
//  Created by MacPro1 on 2/24/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleClass : NSObject
- (NSInteger) lastOddInArray: (NSArray *)array;
@end

@implementation SimpleClass
- (NSInteger) lastOddInArray: (NSArray *)array {
    for (long i = [array count] - 1; i >= 0; i --) {
        if ([[array objectAtIndex:i] intValue] % 2 != 0) {
            return [[array objectAtIndex:i]intValue];
        }
    }
    return -1;
}
@end

int main(int argc, const char * argv[]) {
    NSArray *array = @[@1,@2,@3,@4,@5,@6,@8,@9,@100,@120,@99,@98,@111];
    SimpleClass *simpleClass = [SimpleClass alloc];
    NSLog(@"The odd number in array is: %ld",[simpleClass lastOddInArray:array]);
    return 0;
}


