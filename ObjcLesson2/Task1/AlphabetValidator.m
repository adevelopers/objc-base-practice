//
//  AlphabetValidator.m
//  ObjcLesson2
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 MTS. All rights reserved.
//

#import "AlphabetValidator.h"

@implementation AlphabetValidator
@dynamic alphabet; // что делает dynamic ?

+ (NSMutableArray *)alphabet {
    NSMutableArray *alphabet = [NSMutableArray new];
    for (char a = 'a'; a <= 'z'; a++) {
        NSString * alpha = [NSString stringWithFormat:@"%c", a];
        [alphabet addObject: alpha];
        [alphabet addObject: [alpha uppercaseString]];
    }
    return alphabet;
}

+(BOOL)isValidLetter:(NSString*)letter {
    return [AlphabetValidator.alphabet containsObject:letter];
}

@end
