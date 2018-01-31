//
//  UserModel.m
//  CustomCell
//
//  Created by Дарья Кравченко on 26.09.17.
//  Copyright © 2017 Дарья Лень. All rights reserved.
//

#import "UserModel.h"
static const NSString *kName = @"Name";
static const NSString *kLastName = @"LastName";
static const NSString *kPhone = @"Phone";
static const NSString *kEmail = @"Email";
static const NSString *kPhoto = @"Photo";

@implementation UserModel


-(void) ConfigureMod: (NSDictionary *) dict{
    
    self.name = dict[kName];
    self.lastName = dict[kLastName];
    self.phone = dict[kPhone];
    self.email = dict[kEmail];
    self.photo = dict[kPhoto];
    
}

@end
