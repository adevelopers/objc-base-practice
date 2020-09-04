//
//  Solutions.m
//  Lesson6
//
//  Created by Кирилл Худяков on 15.07.2020.
//  Copyright © 2020 Худяков Кирилл. All rights reserved.
//

#import "Solutions.h"
#import "ApiService.h"

@implementation Solutions

+(void)executeTask1 {
    printf("\nTask1\nПопрактиковаться с применением блоков и создать любую программу с ними (минимум 6 блоков).");
    
    [[ApiService new] getUsersList: ^(NSArray<User*>* users) {
        for (User* user in users) {
            NSLog(@" id: %i - %@\n", user.ID, user.name);
        }
    }];
    
    [[ApiService new] getAvailableTicketsCount:^(int availableTicketsCount){
        printf("\nAvailable tickets count: %d\n", availableTicketsCount);
    }];
    
    [[ApiService new] getUserNameByID:3 and: ^(NSString* username) {
        NSLog(@"\n\nrecieved username: %@", username);
    }];
    
    dispatch_queue_t serialQueue = dispatch_queue_create("serialQueue", NULL);
    dispatch_async(serialQueue, ^{
        [[ApiService new] getUserSalary: ^(double salary){
            printf("\nuser salary: %.2f RUB\n", salary);
        }];
    });
    
    [[ApiService new] getTicketsList: ^(NSArray<NSString*>* tickets) {
        printf("\n\ntickets list\n");
        for (NSString* ticket in tickets) {
            printf("%s\n", ticket.UTF8String);
        }
    }];
    
    printf("\n\n");
    sleep(15);
}

+(void)executeTask2 {
    printf("\nTask2\nДобавить выполнение блоков в различные очереди: как с применением GCD, так и с помощью NSOperationQueue.\n");
    
    printf("\nGCD globalQueue\n");
    dispatch_queue_t globalQueue = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
    
    dispatch_sync(globalQueue, ^{
        [[ApiService new] getTicketsList: ^(NSArray<NSString*>* tickets) {
            
            printf("\n\ntickets list\n");
            for (NSString* ticket in tickets) {
                printf("%s\n", ticket.UTF8String);
            }
        }];
    });
    
    printf("\nNSOperationQueue globalQueue\n");
    NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
    
    [mainQueue addOperationWithBlock: ^{
        [[ApiService new] getUserSalary: ^(double salary){
            printf("\nuser salary: %.2f RUB\n", salary);
        }];
    }];
    
    sleep(7);
}

@end
