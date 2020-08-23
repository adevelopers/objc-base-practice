//
//  ApiService.m
//  Lesson6
//
//  Created by Kirill Khudiakov on 23.08.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import "ApiService.h"

@implementation ApiService

-(void)getUsersList:(UsersComletionBlock)completion {
    sleep(1);
    completion(@[
        [[User alloc] initWithId:1 and:@"Kirill"],
        [[User alloc] initWithId:2 and:@"Alexey"],
        [[User alloc] initWithId:3 and:@"Lina"],
        [[User alloc] initWithId:4 and:@"Mary"]
    ]);
    
}

-(void)getAvailableTicketsCount:(void(^)(int))completion {
    sleep(5);
    [self getTicketsList:^(NSArray* tickets){
        completion((int)tickets.count);
    }];
}


-(void)getUserSalary:(DoubleCompletionBlock)completion {
    completion((double)arc4random() / 100000 );
}

-(void)getAccessToken:(StringCompletionBlock)completion {
    sleep(3);
    completion([[NSUUID UUID] UUIDString]);
}

-(void)getUserNameByID:(int)ID  and:(StringCompletionBlock)completion {
    switch (ID) {
        case 1:
            completion(@"Kirill");
            break;
        case 2:
            completion(@"Alexey");
            break;
        case 3:
            completion(@"Lina");
            break;
        default:
            completion(@"Username");
            break;
    }
    
}

-(void)getTicketsList:(ArrayStringsCompletionBlock)completion {
    sleep(1.5);
    completion(@[@"ticket #1",
                 @"ticket #2",
                 @"ticket #3"]);
}

@end
