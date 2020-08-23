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
    
    [[ApiService new] getUserSalary: ^(double salary){
        printf("\nuser salary: %.2f RUB\n", salary);
    }];
    
    [[ApiService new] getTicketsList: ^(NSArray<NSString*>* tickets) {
        NSLog(@"%@", tickets);
    }];
    
    
    printf("\n\n");
}

+(void)executeTask2 {
    printf("\nTask2\nДобавить выполнение блоков в различные очереди: как с применением GCD, так и с помощью NSOperationQueue.\n");
}

@end
