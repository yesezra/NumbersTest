//
//  NumbersTestAppDelegate.h
//  NumbersTest
//
//  Created by Ezra Spier on 8/5/11.
//  Copyright 2011 Sustainable Harvest. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NumbersTestViewController;

@interface NumbersTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet NumbersTestViewController *viewController;

@end
