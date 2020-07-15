//
//  Solutions.m
//  ObjcLesson2
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 Кирилл Худяков. All rights reserved.
//

#import "SolutionsFacade.h"
#import "AlphabetValidator.h"
#import "Calculations.h"

@implementation SolutionsFacade

+(void)executeTask1 {
    // Создание функции, которая будет проверять, входит ли переданная буква в английский алфавит.
    printf("\nTask1\n");
    NSArray *lettersForValidation = @[ @"A", @"б", @"ц", @"z", @"b", @"B" ];
    for (NSString *letter in lettersForValidation) {
        if ([AlphabetValidator isValidLetter: letter] == YES) {
            printf("✅ letter %s available in alphabet\n", letter.UTF8String);
        } else {
            printf("🚫 letter %s unavailable in alphabet\n", letter.UTF8String);
        }
    }
    
}

+(void)executeTask2 {
   // Разделение метода calculate (из практической задачи 2) на несколько методов (отдельно сложение, вычитание, умножение и деление).
    Calculations *calc = [Calculations new];
    int a = [calc calculate:@"+" and:2 and:3];
    int b = [calc calculate:@"-" and:3 and:2];
    int c = [calc calculate:@"*" and:4 and:5];
    int d = [calc calculate:@"/" and:10 and:2];
    int e = [calc calculate:@"%" and:6 and:3];
    printf("\nTask 2\nResult: \na = %i \nb = %i \nc = %i \nd = %i \ne = %i\n\n", a, b, c, d, e);
}

@end
