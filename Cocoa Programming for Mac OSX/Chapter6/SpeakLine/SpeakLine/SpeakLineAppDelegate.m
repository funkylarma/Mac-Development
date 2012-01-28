//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by Adam Chamberlin on 25/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

#pragma mark - Property Synthesizers

@synthesize window = _window;
@synthesize textField = _textField;
@synthesize stopButton = _stopButton;
@synthesize speakButton = _speakButton;
@synthesize tableView = _tableView;

#pragma mark - Lifecycle Methods

- (id)init
{
    self = [super init];
    if (self) {
        
        // Create a new instance of NSSpeechSynthesizer with default voice
        _speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
        
        // Set the deletegrate
        [_speechSynth setDelegate:self];
        
        // Load available voices
        _voices = [NSSpeechSynthesizer availableVoices];
        
        NSLog(@"init");

    }
    return self;
}

- (void)awakeFromNib
{
    if ([_window respondsToSelector:@selector(setRestorable:)]) {
        [_window setRestorable:NO];
    }
    
    // When the table view appears on screen, the default voice should be selected
    NSString *defaultVoice = [NSSpeechSynthesizer defaultVoice];
    NSInteger defaultRow = [_voices indexOfObject:defaultVoice];
    NSIndexSet *indices = [NSIndexSet indexSetWithIndex:defaultRow];
    [_tableView selectRowIndexes:indices byExtendingSelection:NO];
    [_tableView scrollRowToVisible:defaultRow];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

#pragma mark - Target/Action Button Methods

- (IBAction)stopIt:(id)sender
{
    // Stop the speaking synth
    NSLog(@"stopping speaking");
    [_speechSynth stopSpeaking];
}

- (IBAction)sayIt:(id)sender
{
    // Get the string from the textfield
    NSString *string = [_textField stringValue];
    // Make sure it is a valid string
    if ([string length] == 0) {
        NSLog(@"string from %@ is of zero length", _textField);
        return;
    }
    
    // Start speaking
    [_speechSynth startSpeakingString:string];
    
    // Enable/Disable the buttons
    [_stopButton setEnabled:YES];
    [_speakButton setEnabled:NO];
    [_tableView setEnabled:NO];
    NSLog(@"Started to say: %@", string);
}

#pragma mark - Speech Synth Methods

- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking
{
    // Enable/Disable the buttons
    [_stopButton setEnabled:NO];
    [_speakButton setEnabled:YES];
    [_tableView setEnabled:YES];
    NSLog(@"finished Speaking = %d", finishedSpeaking);
}

#pragma mark - TableView Methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return (NSInteger)[_voices count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    NSString *voice = [_voices objectAtIndex:rowIndex];
    NSDictionary *dict = [NSSpeechSynthesizer attributesForVoice:voice];
    return [dict objectForKey:NSVoiceName];
}

- (void)tableViewSelectionDidChange:(NSNotification *)notification
{
    // Get the selected row number
    NSInteger row = [_tableView selectedRow];
    NSLog(@"row %ld", row);
    // Check it is a valid number
    if (row == -1) {
        return;
    }
    
    // Get the corresponding voice name from the array of voices
    NSString *selectedVoice = [_voices objectAtIndex:row];
    // Set the new voice
    [_speechSynth setVoice:selectedVoice];
    NSLog(@"new voice = %@", selectedVoice);
}

@end
