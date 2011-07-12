//
//  StorageRoomRestKitAppDelegate.h
//  StorageRoomRestKit
//
//  Created by Sascha Konietzke on 7/12/11.
//  Copyright 2011 Thriventures UG. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StorageRoomRestKitViewController;

@interface StorageRoomRestKitAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet StorageRoomRestKitViewController *viewController;

- (void)initializeRestKit;

@end
