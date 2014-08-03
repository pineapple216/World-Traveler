//
//  Menu.h
//  World Traveler
//
//  Created by Eliot Arntz on 3/17/14.
//  Copyright (c) 2014 The Complete. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "TCRecord.h"

@interface Menu : TCRecord

@property (nonatomic, retain) NSString * label;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSManagedObject *venue;

@end
