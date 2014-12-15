//
//  SWBSettingsWindowController.h
//  shadowsocks
//
//  Created by Muscipular on 14/12/15.
//  Copyright (c) 2014年 clowwindy. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SWBSettingsWindowController : NSWindowController
@property (weak) IBOutlet NSTextField *tbxSocksBind;
@property (weak) IBOutlet NSTextField *tbxSocksPort;
@property (weak) IBOutlet NSTextField *tbxPacBind;
@property (weak) IBOutlet NSTextField *tbxPacPort;
@property (weak) IBOutlet NSButton *cbxEnablePac;
- (IBAction)savePref:(id)sender;
- (IBAction)cancel:(id)sender;

@end
