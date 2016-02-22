//
//  main.m
//  lastOddInArray
//
//  Created by MacPro1 on 2/22/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//


#import <Foundation/Foundation.h>
void input(int a[], int n);
void output(int a[], int n);
int lastOdd (int a[], int n);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[10],n;
        NSLog(@"Enter the number of array: n = ");
        scanf("%i",&n);
        input(a, n);
        output(a, n);
        NSLog(@"The last odd number in array is %i",lastOdd(a, n));
    }
    return 0;
}
void input(int a[], int n){
    for (int i = 0; i < n; i++) {
        NSLog(@"a[%i] =",i);
        scanf("%i",&a[i]);
    }
}
void output(int a[], int n){
    for (int i = 0; i < n; i++) {
        NSLog(@"%i",a[i]);
    }
}
int lastOdd (int a[], int n){
    for(int i = n - 1 ; i >= 0; i--)
    {
        if( a[i] % 2 != 0){
            return a[i];
        }
    }
    return -1;
}

