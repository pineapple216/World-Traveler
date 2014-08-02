//
//  Venue.m
//  World Traveler
//
//  Created by Koen Hendriks on 02/08/14.
//  Copyright (c) 2014 Koen Hendriks. All rights reserved.
//

#import "Venue.h"
#import "FSCategory.h"


@implementation Venue

@dynamic name;
@dynamic id;
@dynamic categories;
@dynamic contact;
@dynamic location;
@dynamic menu;

+(NSString *)keyPathForResponseObject
{
    return @"response.venues";
}

@end
