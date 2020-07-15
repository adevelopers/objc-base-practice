//
//  Calculations.m
//  ObjcLesson2
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 Кирилл Худяков. All rights reserved.
//

#import "Calculations.h"

@implementation Calculations

-(int)plus:(int)a and:(int)b {
    return a + b;
}

-(int)minus:(int)a and:(int)b {
    return a - b;
}

-(int)multi:(int)a and:(int)b {
    return a * b;
}

-(int)divide:(int)a and:(int)b {
    return a / b;
}

-(int)mod:(int)a and:(int)b {
    return a % b;
}

-(int)calculate:(NSString *)method and:(int)a and:(int)b {
    char operator = method.UTF8String[0];
    switch (operator) {
        case '+':
            return [self plus:a and:b];
            break;
        case '-':
            return [self minus:a and:b];
            break;
        case '*':
            return [self multi:a and:b];
            break;
        case '/':
            return [self divide:a and:b];
            break;
        case '%':
            return [self mod:a and:b];
            break;
        default:
            NSLog(@"Функция не знает переданный метод");
            return 0;
            break;
    }
    
}

@end
