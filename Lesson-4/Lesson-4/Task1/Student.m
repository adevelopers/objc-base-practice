//
//  Student.m
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "Student.h"
#import "Student+Age.h"

@implementation Student

-(instancetype)initWithName:(NSString *)name andSurName:(NSString *)surName andAge:(int)age withSex:(Sex)sex {
    self = [super init];
    if (self) {
        self.name = name;
        self.surName = surName;
        self->_age = age;
        self->_sex = sex;
    }
    return self;
}

-(NSString*)fullName {
    return [[NSString alloc] initWithFormat:@"%@ %@", self.surName, self.name];
}

-(NSString*)description {
    [self increseAge];
    return [[NSString alloc] initWithFormat:@"Студент %@ Возраст: %d\n", self.fullName, self.age];
}

-(void)setAge:(int)age {
    self->_age = age;
}



@end
