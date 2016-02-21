//
//  main.m
//  maxInArray
//
//  Created by MacPro1 on 2/22/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//

#import <Foundation/Foundation.h>
void input(int a[], int n);
void output(int a[], int n);
int maxa(int a[], int n);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[10],n;
        NSLog(@"Enter the number of array: n = ");
        scanf("%i",&n);
        input(a, n);
        output(a, n);
        NSLog(@"Max number in array is: %i ",maxa(a, n));
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
int maxa(int a[], int n){
    int temp = 0;
    for (int i = 0; i < n; i++) {
        if (temp < a[i]) {
            temp = a[i];
        }
    }
    return temp;
}

