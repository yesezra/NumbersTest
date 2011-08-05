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

@property (nonatomic, retain) UIDocumentInteractionController* documentInteractionController;

- (NSURL*)urlForResource:(NSString*)name ofType:(NSString*)type;

- (void) openPreviewForURL:(NSURL*)url;
- (void) openExternalAppForURL:(NSURL*)url;

- (IBAction) openPagesDocPreview;
- (IBAction) openPagesDocInExternalApp;

- (IBAction) openNumbersDocPreview;
- (IBAction) openNumbersDocInExternalApp;

- (IBAction) openPDFPreview;
- (IBAction) openPDFInExternalApp;

@end
