//
//  Bird.m
//  Lesson5
//
//  Created by Kirill Khudiakov on 24.08.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import "Bird.h"

@implementation Bird

- (instancetype)initWithModel:(NSString *)kind {
    self = [super init];
    if (self) {
        [kind retain];
        [kind release];
        _kind = kind;
        NSLog(@"Bird kind - %@", kind);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Enging - %@", _kind);
    [_kind release];
    [super dealloc];
}



@end
