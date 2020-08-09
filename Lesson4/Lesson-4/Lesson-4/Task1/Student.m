//
//  Student.m
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "Student.h"

@implementation Student

-(instancetype)initWithName:(NSString *)name andSurName:(NSString *)surName andAge:(int)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.surName = surName;
        self->_age = age;
    }
    return self;
}

-(NSString*)fullName {
    return [[NSString alloc] initWithFormat:@"%@ %@", self.surName, self.name];
}

-(NSString*)description {
    return [[NSString alloc] initWithFormat:@"\nСтудент %@ Возраст: %d\n", self.fullName, self.age];
}

@end
