//
//  NSAppDelegate.m
//  MyToolbarMadness
//
//  Created by Nikolay Botev on 11/28/13.
//  Copyright (c) 2013 Nikolay Botev. All rights reserved.
//

#import "NSAppDelegate.h"

@interface NSToolbarFullScreenWindowManager @end
@implementation NSToolbarFullScreenWindowManager(CoolOverride)
- (void)updateContentViewWithEffectiveReveal:(double)arg1 auxMinHeight:(double)arg2 auxMaxHeight:(double)arg3
{
    printf("progress: %f\n", arg1);
}
@end

@implementation NSAppDelegate

- (BOOL)respondsToSelector:(SEL)aSelector {
    NSLog(@"%@", NSStringFromSelector(aSelector));
    return [super respondsToSelector:aSelector];
}

- (NSApplicationPresentationOptions)window:(NSWindow *)window willUseFullScreenPresentationOptions:(NSApplicationPresentationOptions)proposedOptions {
    return proposedOptions;// | NSApplicationPresentationAutoHideToolbar;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.window.delegate = self;
    self.toolbar.delegate = self;
    //self.toolMenuButtonCell.usesItemFromMenu = NO;
}

- (NSMenu *)applicationDockMenu:(NSApplication *)sender {
    NSLog(@"Dock Menu...");
    return nil;
}

@end
