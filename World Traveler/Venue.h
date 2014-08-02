//
//  Venue.h
//  World Traveler
//
//  Created by Koen Hendriks on 02/08/14.
//  Copyright (c) 2014 Koen Hendriks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "TCRecord.h"

@class FSCategory;

@interface Venue : TCRecord

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * id;
@property (nonatomic, retain) FSCategory *categories;
@property (nonatomic, retain) NSManagedObject *contact;
@property (nonatomic, retain) NSManagedObject *location;
@property (nonatomic, retain) NSManagedObject *menu;



@end
