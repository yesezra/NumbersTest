//
//  NumbersTestViewController.h
//  NumbersTest
//
//  Created by Ezra Spier on 8/5/11.
//  Copyright 2011 Sustainable Harvest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumbersTestViewController : UIViewController <UIDocumentInteractionControllerDelegate>{
    
}

@property (nonatomic, assign) IBOutlet UIWebView* webView;

- (NSURL*)urlForResource:(NSString*)name ofType:(NSString*)type;

- (IBAction) openPreview;
- (IBAction) openInPages;

@end
