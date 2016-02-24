//
//  main.m
//  FindXInArray
//
//  Created by MacPro1 on 2/24/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface simpleClass : NSObject
- (BOOL) number:(NSInteger)number availableInArray:(NSArray *)array;
@end

@implementation simpleClass

-(BOOL) number:(NSInteger)number availableInArray:(NSArray *)array {
   // unsigned long quantity = [array count];
    for (int i = 0; i < [array count]; i++) {
        if ((int)number == [[array objectAtIndex:i] intValue])
            return true;
    }
    return false;
}

@end

int main(int argc, const char * argv[]) {
    int x;
    simpleClass *simpleObject = [simpleClass alloc];
    NSArray *array = [NSArray arrayWithObjects: @1, @2, @3, @4, @5, @6, @9, @10, @12, nil];
    NSLog(@"Enter a number to find: ");
    scanf("%i",&x);
    NSInteger key = (NSInteger) x;
    if ([simpleObject number:key availableInArray:array]) {
        NSLog(@"Found %i in array.",x);
    } else {
        NSLog(@"Not found %i in array.",x);
    }
    return 0;
}