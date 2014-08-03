//
//  TCFourSquareSessionManager.h
//  World Traveler
//
//  Created by Koen Hendriks on 02/08/14.
//  Copyright (c) 2014 Koen Hendriks. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface TCFourSquareSessionManager : AFHTTPSessionManager

+(instancetype)sharedClient;

@end
