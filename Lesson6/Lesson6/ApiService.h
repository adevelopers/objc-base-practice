//
//  ApiService.h
//  Lesson6
//
//  Created by Kirill Khudiakov on 23.08.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^DoubleCompletionBlock)(double);
typedef void (^StringCompletionBlock)(NSString*);
typedef void (^ArrayStringsCompletionBlock)(NSArray<NSString*>*);
typedef void (^UsersComletionBlock)(NSArray<User*>*);

@interface ApiService : NSObject

-(void)getUsersList:(UsersComletionBlock)completion;
-(void)getAvailableTicketsCount:(void(^)(int))completion;
-(void)getUserSalary:(DoubleCompletionBlock)completion;
-(void)getAccessToken:(StringCompletionBlock)completion;
-(void)getUserNameByID:(int)ID  and:(StringCompletionBlock)completion;
-(void)getTicketsList:(ArrayStringsCompletionBlock)completion;

@end

NS_ASSUME_NONNULL_END
