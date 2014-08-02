//
//  Menu.h
//  World Traveler
//
//  Created by Koen Hendriks on 02/08/14.
//  Copyright (c) 2014 Koen Hendriks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "TCRecord.h"

@class Venue;

@interface Menu : TCRecord

@property (nonatomic, retain) NSString * label;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) Venue *venue;

@end
