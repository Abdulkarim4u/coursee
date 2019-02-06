//
//  PlayerViewController.swift
//  Coursee
//
//  Created by Malori Morow on 06/02/19.
//  Copyright © 2019 Malori Morow. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController
{
    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    var videoURL: URL!

    override func viewDidLoad() {
        super.viewDidLoad()

        if videoURL != nil {
            youtubePlayerView.loadVideoURL(videoURL)
        } else {
            let alertController = UIAlertController(title: "Oops", message: "your network is bad please try again", preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {(ACTION) in
                
                self.dismiss(animated: true, completion: nil)
        }
            
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        
        youtubePlayerView.layer.cornerRadius = 3.0
        youtubePlayerView.layer.masksToBounds = true
    }
        
    }
    
    
    @IBAction func closeButtonDidTap(_ sender: AnyObject)
    {
        self.dismiss(animated: true, completion: nil)
    }
}















