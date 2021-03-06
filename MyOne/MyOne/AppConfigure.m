//
//  AppConfigure.m
//  MyOne
//
//  Created by bcmac3 on 15/8/28.
//  Copyright (c) 2015年 KellenYang. All rights reserved.
//

#import "AppConfigure.h"
#define UserDefaults          [NSUserDefaults standardUserDefaults]

@implementation AppConfigure

// object
+ (id)objectForKey:(NSString *)key {
    return [UserDefaults objectForKey:key];
}

// value
+ (NSString *)valueForKey:(NSString *)key {
    return [UserDefaults valueForKey:key] ? [UserDefaults valueForKey:key] : @"";
}

// float
+ (float)floatForKey:(NSString *)key {
    return [UserDefaults floatForKey:key];
}

// int
+ (NSInteger)integerForKey:(NSString *)key {
    return [UserDefaults integerForKey:key];
}

// bool
+ (BOOL)boolForKey:(NSString *)key {
    return [UserDefaults boolForKey:key];
}

#pragma mark - Setter

// object
+ (void)setObject:(id)value ForKey:(NSString *)key {
    [UserDefaults setObject:value forKey:key];
}

// value
+ (void)setValue:(id)value forKey:(NSString *)key {
    [UserDefaults setValue:value forKey:key];
}

// float
+ (void)setFloat:(float)value forKey:(NSString *)key {
    [UserDefaults setFloat:value forKey:key];
}

// int
+ (void)setInteger:(NSInteger)value forKey:(NSString *)key {
    [UserDefaults setInteger:value forKey:key];
}

// bool
+ (void)setBool:(BOOL)value forKey:(NSString *)key {
    [UserDefaults setBool:value forKey:key];
}


@end
