//
//  Strings.m
//  Lesson3
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "Strings.h"

@implementation Strings

-(NSArray *)getStrings {
    NSString *dnaCodes = @"TT TA TG AG GG GA TT CC GG AG AA CC TT";
    return [dnaCodes componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

-(void)methodForIn:(NSArray*) items {
    printf("\n\nМетод с for-in\n");
    for (NSString *value in items) {
        if ([value isEqualToString:@"TT"]) {
            continue;
        }
        printf("%s\n", value.UTF8String);
    }
}

-(void)methodWhile:(NSArray*) items {
    printf("\n\nМетод с while\n");
    NSEnumerator<NSString*> *enumerated = [items objectEnumerator];
    NSString *value;
    while (value = [enumerated nextObject]) {
        printf("%s\n", value.UTF8String);
    }
}

-(void)methodDoWhile:(NSArray*) items {
    printf("\n\nМетод с do-while + break-continue\n");
    NSEnumerator<NSString*> *enumerated = [items objectEnumerator];
    NSString *value;
    do {
        if (value == NULL) { // проверка на null
            continue;
        }
        
        printf("%s\n", value.UTF8String);
        if ([value isEqualToString:@"GA"]) { // если встречаем код GA завершаем цикл
            break;
        }
        
    } while (value = [enumerated nextObject]);
}
    
-(void)stringToConsole:(NSArray*) items {
    
    [self methodForIn:items];
    [self methodWhile:items];
    [self methodDoWhile:items];
    
}

-(void)run {
    // Создать программу, которая будет выводить список строк как минимум тремя способами: в цикле while, в цикле for-in с дополнительным условием, с применением break и continue.
    [self stringToConsole: [self getStrings]];
}

@end
