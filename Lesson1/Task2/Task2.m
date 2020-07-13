//
//  Task2.m
//  Lesson1
//
//  Created by Kirill Khudiakov on 13.07.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import "Task2.h"


@implementation Task2

-(void)inputFirst {
    printf("Enter first number> ");
    self.a = 0;
    scanf("%f", &self->_a);
}

-(void)inputSecond {
    printf("Enter second number> ");
    self.b = 0;
    scanf("%f", &self->_b);
}

-(void)printResult {
    NSArray *operators = @[@"+", @"-", @"*", @"/", @"%"];
    for (NSString *operator in operators) {
        float result = 0;
        switch (operator.UTF8String[0]) {
            case '+':
                result = self.a + self.b;
                break;
            case '-':
                result = self.a - self.b;
                break;
            case '*':
                result = self.a * self.b;
                break;
            case '/':
                result = self.a / self.b;
                break;
            case '%':
                result = (int)self.a % (int)self.b;
                break;
            default:
                result = 0;
                break;
        }
        printf("%.2f %s %.2f = %.2f\n", self.a, [operator UTF8String], self.b, result);
    }
    
    printf("\n\n");
}

@end
