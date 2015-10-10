//
//  main.m
//  Combinations
//
//  Created by Bharath G M on 10/10/15.
//  Copyright (c) 2015 Bharath G M. All rights reserved.
//

#import <Foundation/Foundation.h>


void printc(int a[], int n)
{
    char b[3] = {'a','b','c'};
    int sum = 0;
    for (int i = 0; i < n; i++) {
        if (a[i] == 1) {
            printf("\n");
            printf("%c, \n", b[i]);
            printf("");
            sum++;
        }
    }
    if (sum == 0) {
        printf("\n Null set \n");
    }
}

void combination(int a[], int k, int n)
{
    if (k <= n)
    {
        if (k == n)
        {
//            a[k] = 0;
            printc(a, n);
           
            //        a[k] = 1;
            //        printc(a,n);
            
            return;
        }
        a[k] = 0;
        combination(a, k+1, n);
        a[k] = 1;
        combination(a, k+1, n);
    }
}


int main(int argc, const char * argv[])
{
    int a[4] = {0};
    int k = 0;
    int n = 3;
    combination(a, k, n);
    return 0;


}
