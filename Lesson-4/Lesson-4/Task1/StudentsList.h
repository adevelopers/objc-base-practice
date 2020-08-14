//
//  StudentsList.h
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "StudetsService.h"


NS_ASSUME_NONNULL_BEGIN

@interface StudentsList : NSObject

@property (nonatomic) NSArray<Student*>* list;

-(instancetype)initWithService:(StudetsService*)service;
-(void)printList;

@end



NS_ASSUME_NONNULL_END
