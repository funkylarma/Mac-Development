//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by Adam Chamberlin on 25/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

@synthesize textField = _textField;
@synthesize window = _window;

- (id)init
{
    self = [super init];
    if (self) {
        // Logs can help the beginner understand what is happening and hunt down bugs
        NSLog(@"init");
        
        // Create a new instance of NSSpeechSynthesizer with default voice
        _speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)stopIt:(id)sender
{
    NSLog(@"stopping speaking");
    [_speechSynth stopSpeaking];
}

- (IBAction)sayIt:(id)sender
{
    NSString *string = [_textField stringValue];
    if ([string length] == 0) {
        NSLog(@"string from %@ is of zero length", _textField);
        return;
    }
    [_speechSynth startSpeakingString:string];
    NSLog(@"Started to say: %@", string);
}
@end
