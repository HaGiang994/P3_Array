//
//  main.m
//  max2InArray
//
//  Created by MacPro1 on 2/22/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//


#import <Foundation/Foundation.h>
void input(int a[], int n);
void output(int a[], int n);
int max2(int a[], int n);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[10],n;
        NSLog(@"Enter the number of array: n = ");
        scanf("%i",&n);
        input(a, n);
        output(a, n);
        NSLog(@"Max number is divisible by 2 is %i",max2(a, n));
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
int max2(int a[], int n)
{
    int temp = 0;
    for(int i = 0; i < n; i++)
    {
        if( temp < a[i] && a[i] % 2 == 0)
            temp = a[i];
    }
    return temp;
}

