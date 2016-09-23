//
//  MessagesViewController.swift
//  MessagesExtension
//
//  Created by Dameon Green on 9/9/16.
//  Copyright © 2016 AppTastic Voyage. All rights reserved.
//

import Foundation
import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    var browserViewController:PokemonStickerBrowserViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        browserViewController = PokemonStickerBrowserViewController(stickerSize: .regular)
        browserViewController.view.frame = self.view.frame
        
        self.addChildViewController(browserViewController)
        browserViewController.didMove(toParentViewController: self)
        self.view.addSubview(browserViewController.view)
        
        browserViewController.loadStickers()
        browserViewController.stickerBrowserView.reloadData()
        requestPresentationStyle(.expanded)
        //browserViewController.changeBrowserViewBackgroundColor(color: UIColor.blue)
        
    browserViewController.changeBrowserViewBackgroundColor(color:UIColor.init(red: 166.0/255.0, green: 145.0/255, blue: 133.0/255.0, alpha:0.88))
        
        
    }
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
