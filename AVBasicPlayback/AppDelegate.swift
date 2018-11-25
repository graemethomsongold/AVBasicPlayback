//
//  AppDelegate.swift
//  AVBasicPlayback
//
//  Created by Graeme Thomson-Gold on 24/11/2018.
//  Copyright © 2018 Graeme Thomson-Gold. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    let vid:VideoPlayer = VideoPlayer();
    
    @IBAction func openExistingDocument(_ sender: Any) {
        let dialog = NSOpenPanel();
        
        dialog.title                   = "Choose a file";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseDirectories    = true;
        dialog.canCreateDirectories    = true;
        dialog.allowsMultipleSelection = false;
//        dialog.allowedFileTypes        = ["txt"];
        
        if (dialog.runModal() == NSApplication.ModalResponse.OK) {
            let result = dialog.url // Pathname of the file
            
            if (result != nil) {
                vid.url = URL(fileURLWithPath: result!.path);
            }
        } else {
            // User clicked on "Cancel"
            return
        }
    }
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

