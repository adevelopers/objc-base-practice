//
//  main.m
//  ObjcLesson2
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 MTS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlphabetValidator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
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
    return 0;
}
