//
//  NSAppDelegate.h
//  MyToolbarMadness
//
//  Created by Nikolay Botev on 11/28/13.
//  Copyright (c) 2013 Nikolay Botev. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSAppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate, NSToolbarDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (nonatomic,retain) IBOutlet NSToolbar *toolbar;

@property (nonatomic,retain) IBOutlet NSPopUpButtonCell *toolMenuButtonCell;

@end
