//
//  Task1.m
//  Lesson1
//
//  Created by Kirill Khudiakov on 13.07.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import "Task1.h"

@implementation Task1

float a = 0;
float b = 0;

-(void)inputFirst {
    printf("Enter first number> ");
    scanf("%f", &a);
}

-(void)inputSecond {
    printf("Enter second number> ");
    scanf("%f", &b);
}

-(void)printResult {
    printf("%.2f\n", a + b);
    printf("%.2f\n", a - b);
    printf("%.2f\n", a * b);
    printf("%.2f\n", a / b);
}

@end
