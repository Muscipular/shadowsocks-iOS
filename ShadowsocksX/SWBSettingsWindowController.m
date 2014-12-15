//
//  SWBSettingsWindowController.m
//  shadowsocks
//
//  Created by Muscipular on 14/12/15.
//  Copyright (c) 2014年 clowwindy. All rights reserved.
//

#import "SWBSettingsWindowController.h"
#import "ShadowsocksRunner.h"
#import "ProfileManager.h"


@interface SWBSettingsWindowController ()

@end

@implementation SWBSettingsWindowController{
    Configuration *config;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    config = [ProfileManager configuration];
    
    self.tbxPacBind.stringValue = config.pacBind;
    self.tbxPacPort.stringValue = [NSString stringWithFormat: @"%ld", (long)config.pacPort];
    self.tbxSocksBind.stringValue = config.socksBind;
    self.tbxSocksPort.stringValue = [NSString stringWithFormat: @"%ld", (long)config.socksPort];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)savePref:(id)sender {
    config.pacBind = [self.tbxPacBind stringValue];
    config.pacPort = [self.tbxPacPort integerValue];
    config.socksBind = [self.tbxSocksBind stringValue];
    config.socksPort = [self.tbxSocksPort integerValue];
    
    [ProfileManager saveConfiguration:config];
    [self.window performClose:self];
}

- (IBAction)cancel:(id)sender {
    [self.window performClose:self];
}
@end
