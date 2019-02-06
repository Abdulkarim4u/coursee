//
//  YoutubePlayerViewController.swift
//  Coursee
//
//  Created by Malori Morow on 06/02/19.
//  Copyright © 2019 Malori Morow. All rights reserved.
//

import UIKit

class YoutubePlayerViewController: UIViewController
{
    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    var videoURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        youtubePlayerView.layer.cornerRadius = 5.0
        youtubePlayerView.layer.masksToBounds = true
        
        if let videoURL = videoURL {
            youtubePlayerView.loadVideoURL(videoURL)
        } else {
            let alertController = UIAlertController(title: "Ooops!", message: "The video can't be accessed", preferredStyle: UIAlertController.Style.alert)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func closeDidTap() {
        self.dismiss(animated: true, completion: nil)
    }
}
