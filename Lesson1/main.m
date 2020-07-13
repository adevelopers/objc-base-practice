//
//  main.m
//  Lesson1
//
//  Created by Kirill Khudiakov on 13.07.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task1.h"
#import "Task2.h"
#import "Task3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\n\nTask 1");
        Task1 *task1 = [Task1 new];
        [task1 inputFirst];
        [task1 inputSecond];
        [task1 printResult];
        
        NSLog(@"\n\nTask 2");
        Task2 *task2 = [Task2 new];
        [task2 inputFirst];
        [task2 inputSecond];
        [task2 printResult];

        NSLog(@"\n\nTask 3");
        Task3 *task3 = [Task3 new];
        [task3 printResult];
    }
    return 0;
}


