//
//  Venue.h
//  World Traveler
//
//  Created by Eliot Arntz on 4/7/14.
//  Copyright (c) 2014 The Complete. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "TCRecord.h"

@class Contact, FSCategory, Location, Menu;

@interface Venue : TCRecord

@property (nonatomic, retain) NSString * id;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * favorite;
@property (nonatomic, retain) FSCategory *categories;
@property (nonatomic, retain) Contact *contact;
@property (nonatomic, retain) Location *location;
@property (nonatomic, retain) Menu *menu;

@end
