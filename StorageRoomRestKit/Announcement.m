//
//  Announcement.m
//  StorageRoomExample
//
//  Created by Sascha Konietzke on 11/10/10.
//  Copyright 2010 Thriventures UG (haftungsbeschränkt). See LICENSE for details.
//

#import "Announcement.h"


@implementation Announcement

@synthesize text, link, mURL, mImageURL, mCreatedAt, mUpdatedAt;

+ (RKObjectMapping *)restKitMapping {
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[self class]];
    [mapping mapOnConflictByInternalKeyPath:@"m_type" withValue:@"Announcement"];

    [mapping mapKeyPathsToAttributes:@"text", @"text",
        @"link", @"link",
        @"image.m_url", @"mImageURL",
        @"m_url", @"mURL",   
        @"m_created_at", @"mCreatedAt",
        @"m_updated_at", @"mUpdatedAt",
     nil];
  
    return mapping;
}

- (void)dealloc {
    self.text = nil;
    self.link = nil;
    self.mURL = nil;
    self.mImageURL = nil;
    self.mCreatedAt = nil;
    self.mUpdatedAt = nil;
    
    [super dealloc];
}

@end
