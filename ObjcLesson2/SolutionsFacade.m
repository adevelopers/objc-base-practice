//
//  Solutions.m
//  ObjcLesson2
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 MTS. All rights reserved.
//

#import "SolutionsFacade.h"
#import "AlphabetValidator.h"

@implementation SolutionsFacade

+(void)executeTask1 {
    NSArray *lettersForValidation = @[ @"A", @"б", @"ц", @"z", @"b", @"B" ];
    // Создание функции, которая будет проверять, входит ли переданная буква в английский алфавит.
    for (NSString *letter in lettersForValidation) {
        if ([AlphabetValidator isValidLetter: letter] == YES) {
            printf("✅ letter %s available in alphabet\n", letter.UTF8String);
        } else {
            printf("🚫 letter %s unavailable in alphabet\n", letter.UTF8String);
        }
    }
    
}

+(void)executeTask2 {
    
}

@end
