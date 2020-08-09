//
//  Student.h
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum Sex {
    female,
    male
};

typedef enum Sex Sex;

@interface Student : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* surName;
@property (readonly, nonatomic, assign) int age;
@property (readonly, nonatomic) NSString* fullName;
@property (readonly, nonatomic, assign) Sex sex;

-(instancetype)initWithName:(NSString *)name andSurName:(NSString *)surName andAge:(int)age withSex:(Sex)sex;

-(void)setAge:(int)age;

@end

NS_ASSUME_NONNULL_END
