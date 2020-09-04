//
//  main.m
//  Lesson7
//
//  Created by Kirill Khudiakov on 04.09.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 1. Создать класс Student, в котором данные будут преобразовываться в словарь и обратно. С помощью записи словаря в файл реализовать сохранение объекта на диск и чтение с диска.
 2. Самостоятельно прочитать главу про обработку ошибок.
 3. Посмотреть в каком виде сохранятся данные из класса Student в проекте с урока.
 
 */

@interface Student : NSObject<NSCoding, NSSecureCoding>

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* surname;

-(instancetype)init;

@end

@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.surname = [aDecoder decodeObjectForKey:@"surname"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.surname forKey:@"surname"];
}

+ (BOOL)supportsSecureCoding {
    return YES;
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student* student = [Student new];
        student.name = @"Kirill";
        student.surname = @"K";
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject: student requiringSecureCoding:false error: nil];
        
        
        [data writeToFile: @"filename.bin" atomically:true];
        
        // Декодируем напрямую из файла
        Student* object = [NSKeyedUnarchiver unarchiveObjectWithFile:@"filename.bin"];
        
        // Декодируем напрямую из Data
//        Student* object = [NSKeyedUnarchiver unarchivedObjectOfClass: [Student class] fromData:data error:nil];
        
        if (object != nil) {
            printf("Student %s %s\n\n", object.name.UTF8String, object.surname.UTF8String);
        } else {
            printf("student is nil\n");
        }
        
    }
    return 0;
}
