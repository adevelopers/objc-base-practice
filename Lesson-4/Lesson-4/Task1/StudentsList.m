//
//  StudentsList.m
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "StudentsList.h"

@implementation StudentsList

-(instancetype)initWithService:(StudetsService*)service {
    self = [super init];
    if (self) {
        self.list = [service generate:genAll];
    }
    return self;
}

-(void)printList {
    for (Student* student in self.list) {
        printf("%s", student.description.UTF8String);
    }
}

@end
