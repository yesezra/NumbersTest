//
//  NumbersTestViewController.m
//  NumbersTest
//
//  Created by Ezra Spier on 8/5/11.
//  Copyright 2011 Sustainable Harvest. All rights reserved.
//

#import "NumbersTestViewController.h"

@implementation NumbersTestViewController

@synthesize webView = _webView;

- (void)dealloc
{
    [super dealloc];
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



- (IBAction) openPreview {
    NSURL* url = [self urlForResource:@"test" ofType:@"pages"];
    //    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    //    [self.webView loadRequest:urlRequest];
    UIDocumentInteractionController* documentInteractionController = [UIDocumentInteractionController interactionControllerWithURL:url];
    documentInteractionController.delegate = self;
    [documentInteractionController presentPreviewAnimated:YES];
}

- (IBAction) openInPages {
    NSURL* url = [self urlForResource:@"test" ofType:@"pages"];
    UIDocumentInteractionController* documentInteractionController = [[UIDocumentInteractionController interactionControllerWithURL:url] retain];
    documentInteractionController.delegate = self;
    NSLog(@"%@", self);
    [documentInteractionController presentOpenInMenuFromRect:CGRectZero inView:self.view animated:YES];
}

- (NSURL*)urlForResource:(NSString*)name ofType:(NSString*)type {
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:type];
    NSLog(@"path: %@", path);
    NSURL *url = [NSURL fileURLWithPath:path];
    NSLog(@"url: %@", url);
    return url;
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];

//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [self.webView loadRequest:urlRequest];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
