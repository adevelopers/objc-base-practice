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
    
-(void)stringToConsole:(NSArray*) items {
    for (NSString *value in items) {
        printf("%s\n", value.UTF8String);
    }
}

-(void)run {
    // Создать массив строк и вывести его в консоль используя цикл.
    [self stringToConsole: [self getStrings]];
    
}

@end
