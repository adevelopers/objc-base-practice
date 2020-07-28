//
//  AlphabetValidator.h
//  ObjcLesson2
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 Кирилл Худяков. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AlphabetValidator : NSObject

@property (class) NSMutableArray *alphabet;

+(BOOL)isValidLetter:(NSString*)letter;

@end

NS_ASSUME_NONNULL_END
