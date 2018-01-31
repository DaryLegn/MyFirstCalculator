//
//  Singleton.m
//  Calculator
//
//  Created by Дарья Кравченко on 09.09.17.
//  Copyright © 2017 Дарья Лень. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype)sharedInstance
{
    static Singleton *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Singleton alloc] init];
    
    });
    return sharedInstance;
}

@end
