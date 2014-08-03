//
//  TCFourSquareSessionManager.m
//  World Traveler
//
//  Created by Koen Hendriks on 02/08/14.
//  Copyright (c) 2014 Koen Hendriks. All rights reserved.
//

#import "TCFourSquareSessionManager.h"

static NSString *const TCFoursquareBaseURLString = @"https://api.foursquare.com/v2/";

@implementation TCFourSquareSessionManager

// Create an instance of TCFourSquareSessionManager, only do this onece
+(instancetype)sharedClient
{
    static TCFourSquareSessionManager *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[TCFourSquareSessionManager alloc]initWithBaseURL:[NSURL URLWithString:TCFoursquareBaseURLString]];
    });
    return _sharedClient;
}


@end
