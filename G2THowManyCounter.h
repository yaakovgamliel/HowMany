//
//  HowManyCounter.h
//  HowMany
//
//  Created by yaakov gamliel on 9/28/14.
//  Copyright (c) 2014 g2think. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface G2THowManyCounter : NSObject

+ (NSInteger)howManyTimes;

+ (void)resetCounter;

+ (void)addThisMuchTimes:(NSInteger)times;

+ (void)oneMoreTime;

@end
