//
//  Student.h
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* surName;
@property (readonly, nonatomic, assign) int age;
@property (readonly, nonatomic) NSString* fullName;

-(instancetype)initWithName:(NSString *)name andSurName:(NSString *)surName andAge:(int)age;

    

@end

NS_ASSUME_NONNULL_END
