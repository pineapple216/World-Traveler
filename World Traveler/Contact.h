//
//  Contact.h
//  World Traveler
//
//  Created by Eliot Arntz on 3/17/14.
//  Copyright (c) 2014 The Complete. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "TCRecord.h"

@interface Contact : TCRecord

@property (nonatomic, retain) NSString * formattedPhone;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) NSManagedObject *venue;

@end
