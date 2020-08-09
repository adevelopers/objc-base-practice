//
//  StudentsList.m
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "StudentsList.h"

@implementation StudentsList

-(instancetype)init {
    self = [super init];
    if (self) {
        self.list = @[
            [[Student alloc]
             initWithName: @"Андрей"
             andSurName: @"Балык"
             andAge: 23],
            [[Student alloc]
            initWithName: @"Виктория"
            andSurName: @"Алеф"
            andAge: 19],
            [[Student alloc]
            initWithName: @"Агелина"
            andSurName: @"Волк"
            andAge: 31]
        ];
    }
    return self;
}

-(void)printList {
    for (Student* student in self.list) {
        printf("%s", student.description.UTF8String);
    }
}

@end
