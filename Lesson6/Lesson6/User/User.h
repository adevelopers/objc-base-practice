//
//  User.h
//  Lesson6
//
//  Created by Kirill Khudiakov on 23.08.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

@property (nonatomic, assign) int ID;
@property (nonatomic) NSString* name;

- (instancetype)initWithId:(int)userID and:(NSString*)userName;

@end

NS_ASSUME_NONNULL_END
