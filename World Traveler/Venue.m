//
//  Venue.m
//  World Traveler
//
//  Created by Eliot Arntz on 4/7/14.
//  Copyright (c) 2014 The Complete. All rights reserved.
//

#import "Venue.h"
#import "Contact.h"
#import "FSCategory.h"
#import "Location.h"
#import "Menu.h"


@implementation Venue

@dynamic id;
@dynamic name;
@dynamic favorite;
@dynamic categories;
@dynamic contact;
@dynamic location;
@dynamic menu;

+(NSString *) keyPathForResponseObject
{
    return @"response.venues";
}

@end
