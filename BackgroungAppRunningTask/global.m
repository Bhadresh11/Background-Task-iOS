//
//  global.m
//  BackgroungAppRunningTask
//
//  Created by Malay Patel on 10/10/16.
//  Copyright © 2016 Bhadresh Patoliya. All rights reserved.
//

#import "global.h"

@implementation global
+ (global *)sharedInstance
{
    static global *sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
        //  dicGlobal = [[NSMutableDictionary alloc]initWithCapacity:0];
        
    });
    return sharedInstance;
}
@end
