//
//  AppConfigure.h
//  MyOne
//
//  Created by bcmac3 on 15/8/28.
//  Copyright (c) 2015年 KellenYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppConfigure : NSObject

+ (id)objectForKey:(NSString *)key;
+ (NSString *)valueForKey:(NSString *)key;
+ (float)floatForKey:(NSString *)key;
+ (NSInteger)integerForKey:(NSString *)key;
+ (BOOL)boolForKey:(NSString *)key;
+ (void)setObject:(id)value ForKey:(NSString *)key;
+ (void)setValue:(id)value forKey:(NSString *)key;
+ (void)setFloat:(float)value forKey:(NSString *)key;
+ (void)setInteger:(NSInteger)value forKey:(NSString *)key;
+ (void)setBool:(BOOL)value forKey:(NSString *)key;

@end
