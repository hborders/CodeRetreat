//
//  Heath_MarcelAppDelegate.h
//  Heath-Marcel
//
//  Created by Heath Borders on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Heath_MarcelViewController;

@interface Heath_MarcelAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Heath_MarcelViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Heath_MarcelViewController *viewController;

@end

