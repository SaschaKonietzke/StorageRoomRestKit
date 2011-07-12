//
//  Announcement.h
//  StorageRoomExample
//
//  Created by Sascha Konietzke on 11/10/10.
//  Copyright 2010 Thriventures UG (haftungsbeschränkt). See LICENSE for details.
//


@interface Announcement : NSObject {
    NSString * text;
    NSString * link;
  
    NSString * mURL;
    NSString * mImageURL;
    NSDate * mUpdatedAt;
    NSDate * mCreatedAt;
}

@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSString * link;

@property (nonatomic, retain) NSString * mURL;
@property (nonatomic, retain) NSString * mImageURL;
@property (nonatomic, retain) NSDate * mUpdatedAt;
@property (nonatomic, retain) NSDate * mCreatedAt;

+ (RKObjectMapping *)restKitMapping;

@end
