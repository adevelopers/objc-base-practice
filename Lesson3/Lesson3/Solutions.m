//
//  Solutions.m
//  Lesson3
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "Solutions.h"
#import "StudentsList.h"

@implementation Solutions

+(void)executeTask1 {
    printf("\nTask1\nСоздать программу, которая будет выводить список студентов. \nДля этого необходимо создать класс Студент и для установления значения свойств использовать собственный конструктор.\n");
    [[StudentsList new] printList];
}
+(void)executeTask2 {}

@end
