//
//  MyFirstDelegate.h
//  Calculator
//
//  Created by Дарья Кравченко on 02.10.17.
//  Copyright © 2017 Дарья Лень. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

@interface MyFirstDelegate : NSObject

@property (nonatomic, strong) UserModel *model;
//@property (nonatomic, weak) id <MyFirstDelegate> delegate; // weak чтобы избежать перекрестных ссылок
@property (strong, nonatomic) UIWindow *window;
//@property (nonatomic, strong) UILabel *title

@end
