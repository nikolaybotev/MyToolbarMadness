//
//  main.m
//  MyToolbarMadness
//
//  Created by Nikolay Botev on 11/28/13.
//  Copyright (c) 2013 Nikolay Botev. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Actioner : NSObject
- (id)initWithArgc:(int) argc andArgv:(const char *[])argv;
- (void)run:(NSObject *)arg;
@end

@implementation Actioner {
    int argc;
    const char **argv;
}

- (id)initWithArgc:(int) _argc andArgv:(const char *[])_argv {
    self = [super init];
    if (self) {
        self->argc = _argc;
        self->argv = _argv;
    }
    return self;
}

- (void)run:(NSCondition *)cond {
    NSApplicationMain(self->argc, self->argv);
    [cond lock];
    [cond signal];
    [cond unlock];
}

@end

int main(int argc, const char * argv[])
{
//    Actioner *act = [[Actioner alloc] initWithArgc:argc andArgv:argv];
//
//    NSCondition *cond = [[NSCondition alloc] init];
//
//    NSThread *thread = [[NSThread alloc] initWithTarget:act selector:@selector(run:) object:cond];
//    thread.name = @"Major Clusterfuck";
//    [thread start];
//
//    [cond lock];
//    [cond wait];
//    [cond unlock];

    return NSApplicationMain(argc, argv);
}
