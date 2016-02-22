//
//  main.m
//  macroExercise
//
//  Created by MacPro1 on 2/22/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//

#import <Foundation/Foundation.h>
#define sum(a,b) a+b
#define maxab(a,b) a > b ? a : b
#define maxabc(a,b,c) (a > b ? (a > c ? a : c) : (b > c ? b : c))
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 7 ,b = 5, c= 3;
        NSLog(@"Sum is %i ",sum(a, b));
        NSLog(@"Max number in a and b is: %i",maxab(a, b));
        NSLog(@"Max number in a,b,c is: % i", maxabc(a, b, c));
    }
    return 0;
}