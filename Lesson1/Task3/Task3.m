//
//  Task3.m
//  Lesson1
//
//  Created by Kirill Khudiakov on 14.07.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import "Task3.h"

@implementation Task3

-(void)printResult {
    int count = 3;
    float numbers[count];

    rand();
    for (int n = 0; n < count; n++) {
        numbers[n] = ((float)rand() / RAND_MAX) * 10;
    }
    
    float averagegSum = 0;
    for (int n = 1; n < count; n++) {
        averagegSum += numbers[n];
    }
    
    float avg = averagegSum / count;
    
    printf("We have %d numbers [ %.2f", count, numbers[0]);
    
    for (int n = 1; n < count; n++) {
        printf(", %.2f", numbers[n]);
    }
    printf("] \nAverage: %.2f\n\n", avg);
}

@end
