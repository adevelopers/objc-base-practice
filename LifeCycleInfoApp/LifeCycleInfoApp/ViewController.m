//
//  ViewController.m
//  LifeCycleInfoApp
//
//  Created by Kirill Khudiakov on 04.09.2020.
//  Copyright © 2020 Kirill Khudiakov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        printf("1 метод жизненого цикла ViewController - Разово\n");
    }
    return self;
}

-(void)loadView {
    [super loadView];
    printf("2 метод жизненого цикла ViewController - Разово (Хотя при ошибки может быть вызван повторно)\n");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    printf("3 метод жизненого цикла ViewController - Разово\n");
}

-(void)viewWillAppear:(BOOL)animated {
    printf("4 метод жизненого цикла ViewController - Многоразово\n");
}

- (void)viewWillLayoutSubviews {
    printf("5 метод жизненого цикла ViewController - Многоразово\n");
}

- (void)viewDidAppear:(BOOL)animated {
    printf("6 метод жизненого цикла ViewController - Многоразово\n");
}


// методы цикла при уходе с экрана
- (void)viewWillDisappear:(BOOL)animated {
    printf("метод жизненого цикла ViewController - Многоразово\n");
}

- (void)viewDidDisappear:(BOOL)animated {
    printf("метод жизненого цикла ViewController - Многоразово\n");
}


- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    printf("🔄 метод при повороте экрана - Многоразово\n");
}

@end
