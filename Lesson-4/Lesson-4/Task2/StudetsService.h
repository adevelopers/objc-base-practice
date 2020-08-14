//
//  StudetsService.h
//  Lesson-4
//
//  Created by Кирилл Худяков on 09.08.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum GenType {
    genAll,
    genGirls,
    genBoys
};

typedef enum GenType GenType;

@interface StudetsService : NSObject

-(NSArray*)generate:(GenType)type;

@end

NS_ASSUME_NONNULL_END
