//
//  Heath_JustinAppDelegate.h
//  Heath-Justin
//
//  Created by Heath Borders on 9/18/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Heath_JustinViewController;

@interface Heath_JustinAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Heath_JustinViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Heath_JustinViewController *viewController;

@end

