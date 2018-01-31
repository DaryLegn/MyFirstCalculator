//
//  UserModel.h
//  CustomCell
//
//  Created by Дарья Кравченко on 26.09.17.
//  Copyright © 2017 Дарья Лень. All rights reserved.
//

@import UIKit;

@interface UserModel : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * lastName;
@property (nonatomic, strong) NSString * phone;
@property (nonatomic, strong) NSString * email;
@property (nonatomic, strong) NSString * photo;

-(void) ConfigureMod: (NSDictionary *) dict;

@end
