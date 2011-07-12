//
//  StorageRoomRestKitViewController.h
//  StorageRoomRestKit
//
//  Created by Sascha Konietzke on 7/12/11.
//  Copyright 2011 Thriventures UG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StorageRoomRestKitViewController : UIViewController <RKObjectLoaderDelegate> {
    
}

- (IBAction)loadOneRestaurantButtonTapped;
- (IBAction)loadOneAnnouncementButtonTapped;
- (IBAction)loadManyRestaurantsButtonTapped;
- (IBAction)loadManyAnnouncementsButtonTapped;

@end
