//
//  HowManyCounter.m
//  HowMany
//
//  Created by yaakov gamliel on 9/28/14.
//  Copyright (c) 2014 g2think. All rights reserved.
//

#import "G2THowManyCounter.h"

@implementation G2THowManyCounter

+ (NSInteger)howManyTimes {
    
    NSInteger times = [[NSUserDefaults standardUserDefaults] integerForKey:@"howManyTimes"];
    
    return times;
}

+ (void)resetCounter {
    
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"howManyTimes"];
    
}

+ (void)addThisMuchTimes:(NSInteger)times {
    
    [[NSUserDefaults standardUserDefaults] setInteger: times forKey: @"howManyTimes"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

+ (void)oneMoreTime {
    
    NSInteger times = [self howManyTimes];
    times += 1;
    
    [[NSUserDefaults standardUserDefaults] setInteger: times forKey: @"howManyTimes"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
