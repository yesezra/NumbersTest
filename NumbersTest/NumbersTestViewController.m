//
//  NumbersTestViewController.m
//  NumbersTest
//
//  Created by Ezra Spier on 8/5/11.
//  Copyright 2011 Sustainable Harvest. All rights reserved.
//

#import "NumbersTestViewController.h"

@implementation NumbersTestViewController

@synthesize documentInteractionController = _documentInteractionController;

- (void)dealloc
{
    [super dealloc];
    self.documentInteractionController = nil;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (UIViewController *) documentInteractionControllerViewControllerForPreview: (UIDocumentInteractionController *) controller {
    return self;
}

- (void) openPreviewForURL:(NSURL*)url {
    self.documentInteractionController = [UIDocumentInteractionController interactionControllerWithURL:url];
    self.documentInteractionController.delegate = self;
    [self.documentInteractionController presentPreviewAnimated:YES];
}

- (void) openExternalAppForURL:(NSURL*)url {
    self.documentInteractionController = [[UIDocumentInteractionController interactionControllerWithURL:url] retain];
    self.documentInteractionController.delegate = self;
    [self.documentInteractionController presentOpenInMenuFromRect:CGRectZero inView:self.view animated:YES];
}

- (NSURL*)urlForResource:(NSString*)name ofType:(NSString*)type {
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:type];
    NSURL *url = [NSURL fileURLWithPath:path];
    return url;
}

#pragma mark - IBActions
- (IBAction) openPagesDocPreview {
    NSURL* url = [self urlForResource:@"test" ofType:@"pages"];
    [self openPreviewForURL:url];
}

- (IBAction) openPagesDocInExternalApp {
    NSURL* url = [self urlForResource:@"test" ofType:@"pages"];
    [self openExternalAppForURL:url];
}

- (IBAction) openNumbersDocPreview {
    NSURL* url = [self urlForResource:@"test" ofType:@"numbers"];
    [self openPreviewForURL:url];
}

- (IBAction) openNumbersDocInExternalApp {
    NSURL* url = [self urlForResource:@"test" ofType:@"numbers"];
    [self openExternalAppForURL:url];
}

- (IBAction) openPDFPreview {
    NSURL* url = [self urlForResource:@"test" ofType:@"pdf"];
    [self openPreviewForURL:url];
}
- (IBAction) openPDFInExternalApp {
    NSURL* url = [self urlForResource:@"test" ofType:@"pdf"];
    [self openExternalAppForURL:url];
}

#pragma mark - View lifecycle
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
