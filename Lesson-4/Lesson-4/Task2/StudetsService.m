//
//  StudetsService.m
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "StudetsService.h"
#import "Student.h"

@implementation StudetsService

-(NSArray*)generate:(GenType)type {
    switch (type) {
        case genBoys:
            return [self generateBoys];
            break;
        case genGirls:
            return [self generateGirls];
            break;
        case genAll:
            return [[self generateBoys] arrayByAddingObjectsFromArray:[self generateGirls]];
            break;
        default:
            return @[];
            break;
    }
}

-(NSArray<Student*>*)generateGirls {
    return @[
        [[Student alloc]
         initWithName: @"Виктория"
         andSurName: @"Алеф"
         andAge: 19
         withSex: female],
        [[Student alloc]
         initWithName: @"Агелина"
         andSurName: @"Волк"
         andAge: 31
         withSex: female]
    ];
}

-(NSArray<Student*>*)generateBoys {
    return @[
        [[Student alloc]
         initWithName: @"Андрей"
         andSurName: @"Балык"
         andAge: 23
         withSex: male],
        [[Student alloc]
         initWithName: @"Сергей"
         andSurName: @"Золкин"
         andAge: 27
         withSex: male],
        [[Student alloc]
         initWithName: @"Виталий"
         andSurName: @"Ермолаев"
         andAge: 21
         withSex: male],
    ];
}


@end
