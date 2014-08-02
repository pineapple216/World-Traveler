//
//  Contact.h
//  World Traveler
//
//  Created by Koen Hendriks on 02/08/14.
//  Copyright (c) 2014 Koen Hendriks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "TCRecord.h"

@class Venue;

@interface Contact : TCRecord

@property (nonatomic, retain) NSString * formattedPhone;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) Venue *venue;

@end
