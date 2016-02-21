//
//  main.m
//  xInArray
//
//  Created by MacPro1 on 2/22/16.
//  Copyright © 2016 MacPro1. All rights reserved.
//

#import <Foundation/Foundation.h>
void input(int a[], int n);
void output(int a[], int n);
void findx(int a[], int n, int x);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[10],n,x;
        NSLog(@"Enter the number of array: n = ");
        scanf("%i",&n);
        input(a, n);
        output(a, n);
        findx(a, n, x);
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
void findx(int a[], int n, int x){
    NSLog(@"Enter the number to find: ");
    scanf("%i",&x);
    int temp = 0;
    for (int i = 0; i < n; i++) {
        if(a[i] == x){
            temp = 1;
        }
        else temp = -1;
    }
    if (temp == 1) {
        NSLog(@"Found %i in array",x);
    }
    else
        NSLog(@"Not found %i in array",x);
}

