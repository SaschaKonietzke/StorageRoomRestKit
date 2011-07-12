//
//  StorageRoomRestKitViewController.m
//  StorageRoomRestKit
//
//  Created by Sascha Konietzke on 7/12/11.
//  Copyright 2011 Thriventures UG. All rights reserved.
//

#import "StorageRoomRestKitViewController.h"

#import "Restaurant.h"
#import "Announcement.h"

@implementation StorageRoomRestKitViewController

- (IBAction)loadOneRestaurantButtonTapped {
    [[RKObjectManager sharedManager] loadObjectsAtResourcePath:@"/collections/4d960916ba05617333000005/entries/4d960917ba05617333000011" delegate:self];
}

- (IBAction)loadOneAnnouncementButtonTapped {
    [[RKObjectManager sharedManager] loadObjectsAtResourcePath:@"/collections/4d96091dba0561733300001b/entries/4d96091dba05617333000021" delegate:self];    
}

- (IBAction)loadManyRestaurantsButtonTapped {
    [[RKObjectManager sharedManager] loadObjectsAtResourcePath:@"/collections/4d960916ba05617333000005/entries" delegate:self];
}

- (IBAction)loadManyAnnouncementsButtonTapped {
    [[RKObjectManager sharedManager] loadObjectsAtResourcePath:@"/collections/4d96091dba0561733300001b/entries" delegate:self];        
}

#pragma mark RKObjectLoaderDelegate methods

- (void)objectLoader:(RKObjectLoader*)objectLoader didLoadObjects:(NSArray*)objects {
    NSLog(@"Loaded objects: %@", objects);
}

- (void)objectLoader:(RKObjectLoader*)objectLoader didFailWithError:(NSError*)error {
	UIAlertView* alert = [[[UIAlertView alloc] initWithTitle:@"Error" 
                                                     message:[error localizedDescription] 
                                                    delegate:nil 
                                           cancelButtonTitle:@"OK" otherButtonTitles:nil] autorelease];
	[alert show];
	NSLog(@"Hit error: %@", error);
}

@end
