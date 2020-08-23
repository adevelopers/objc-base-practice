//
//  User.m
//  Lesson6
//
//  Created by Kirill Khudiakov on 23.08.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithId:(int)userID and:(NSString*)userName {
    self = [super init];
    if (self) {
        self.ID = userID;
        self.name = userName;
    }
    return self;
}

@end
