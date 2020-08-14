//
//  Solutions.m
//  Lesson3
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "Solutions.h"
#import "StudentsList.h"
#import "StudetsService.h"

@implementation Solutions

+(void)executeTask1 {
    printf("\nTask1\nСоздать программу, которая будет выводить список студентов. \nДля этого необходимо создать класс Студент и для установления значения свойств использовать собственный конструктор.\n");
    [[[StudentsList alloc] initWithService:[StudetsService new]] printList];
    printf("\n\n");
}

+(void)executeTask2 {
    printf("ООП:\nАбстрация: реализован класс Student\nИнкапсуляция: скрыты методы generateBoys/Girls в StudentsService \nНаследование: ну будем считать что достаточно наследования от NSObject =)\nПолиморфизм: --//--\nВ категории реализован метод `increseAge`\n\n");
}

@end
