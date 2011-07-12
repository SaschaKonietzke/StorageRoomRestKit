//
//  Restaurant.m
//  iPhoneExampleRestKit
//
//  Created by Sascha Konietzke on 7/11/11.
//  Copyright (c) 2011 Thriventures UG. All rights reserved.
//

#import "Restaurant.h"


@implementation Restaurant
@dynamic address;
@dynamic mURL;
@dynamic mCreatedAt;
@dynamic mImageURL;
@dynamic lastVisit;
@dynamic latitude;
@dynamic longitude;
@dynamic name;
@dynamic mPreviewImageURL;
@dynamic priceRange;
@dynamic stars;
@dynamic text;
@dynamic mUpdatedAt;
@dynamic vegetarianMenu;

+ (RKManagedObjectMapping *)restKitMapping {
    RKManagedObjectMapping *mapping = [RKManagedObjectMapping mappingForClass:[self class]];
    [mapping mapOnConflictByInternalKeyPath:@"m_type" withValue:@"Restaurant"];
    mapping.primaryKeyAttribute = @"mURL";
    [mapping mapKeyPathsToAttributes:@"name", @"name",
        @"text", @"text",
        @"address", @"address",
        @"price_range", @"priceRange",
        @"stars", @"stars",
        @"vegetarian_menu", @"vegetarianMenu", 
        @"location.lat", @"latitude",
        @"location.lng", @"longitude",
        @"last_visit", @"lastVisit",   
        @"m_created_at", @"mCreatedAt",
        @"m_updated_at", @"mUpdatedAt",
        @"m_url", @"mURL",
     nil];
  
    return mapping;
}

@end
