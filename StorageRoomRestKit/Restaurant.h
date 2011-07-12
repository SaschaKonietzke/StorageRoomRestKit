//
//  Restaurant.h
//  iPhoneExampleRestKit
//
//  Created by Sascha Konietzke on 7/11/11.
//  Copyright (c) 2011 Thriventures UG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Restaurant : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * address;

@property (nonatomic, retain) NSDate * lastVisit;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * name;

@property (nonatomic, retain) NSNumber * priceRange;
@property (nonatomic, retain) NSNumber * stars;
@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSNumber * vegetarianMenu;

@property (nonatomic, retain) NSDate * mUpdatedAt;
@property (nonatomic, retain) NSDate * mCreatedAt;
@property (nonatomic, retain) NSString * mImageURL;
@property (nonatomic, retain) NSString * mPreviewImageURL;
@property (nonatomic, retain) NSString * mURL;

+ (RKManagedObjectMapping *)restKitMapping;

@end
