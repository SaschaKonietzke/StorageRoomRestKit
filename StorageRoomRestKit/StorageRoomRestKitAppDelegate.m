//
//  StorageRoomRestKitAppDelegate.m
//  StorageRoomRestKit
//
//  Created by Sascha Konietzke on 7/12/11.
//  Copyright 2011 Thriventures UG. All rights reserved.
//

#import "StorageRoomRestKitAppDelegate.h"

#import "StorageRoomRestKitViewController.h"

#import "Restaurant.h"
#import "Announcement.h"

@implementation StorageRoomRestKitAppDelegate

@synthesize window=_window;
@synthesize viewController=_viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initializeRestKit];
    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)initializeRestKit {
    // configure to the demo account and credentials
    RKObjectManager* objectManager = [RKObjectManager objectManagerWithBaseURL:@"http://api.storageroomapp.com/accounts/4d13574cba05613d25000004"];
    objectManager.client.username = @"DZHpRbsJ7VgFXhybKWmT";
    objectManager.client.password = @"";
    objectManager.client.forceBasicAuthentication = YES;
    [objectManager.client setValue:@"m_" forHTTPHeaderField:@"X-Meta-Prefix"]; // use m_ as meta prefix and not @, as this causes problems with KVC
    
    [RKRequestQueue sharedQueue].showsNetworkActivityIndicatorWhenBusy = YES;
    
    objectManager.objectStore = [RKManagedObjectStore objectStoreWithStoreFilename:@"RestaurantData.sqlite" usingSeedDatabaseName:nil managedObjectModel:nil delegate:self];
    
    // register for both key paths ("entry" when loading one Resource, "array.resources" when loading many at once)
    RKObjectMapping *announcementMapping = [Announcement restKitMapping];
    [objectManager.mappingProvider setObjectMapping:announcementMapping forKeyPath:@"entry"];
    [objectManager.mappingProvider setObjectMapping:announcementMapping forKeyPath:@"array.resources"];
    
    RKObjectMapping *restaurantMapping = [Restaurant restKitMapping];    
    [objectManager.mappingProvider setObjectMapping:restaurantMapping forKeyPath:@"entry"];    
    [objectManager.mappingProvider setObjectMapping:restaurantMapping forKeyPath:@"array.resources"];    
    
    // configure routes
    //    [objectManager.router routeClass:[Restaurant class]     toResourcePath:@"/collections/4d960916ba05617333000005/entries" forMethod:RKRequestMethodGET];    
    //    [objectManager.router routeClass:[Restaurant class]     toResourcePath:@"/collections/4d960916ba05617333000005/entries/(mID)" forMethod:RKRequestMethodGET];
    //    
    //    [objectManager.router routeClass:[Announcement class]   toResourcePath:@"/collections/4d96091dba0561733300001b/entries" forMethod:RKRequestMethodGET];        
    //    [objectManager.router routeClass:[Announcement class]   toResourcePath:@"/collections/4d96091dba0561733300001b/entries/(mID)" forMethod:RKRequestMethodGET];    
    
    
    
    RKLogConfigureByName("RestKit", RKLogLevelTrace);
    RKLogConfigureByName("RestKit/Network", RKLogLevelDebug);
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelDebug);
    RKLogConfigureByName("RestKit/Network/Queue", RKLogLevelDebug);
    
    // Enable boatloads of trace info from the mapper
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelTrace);
    
}


- (void)dealloc {
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
