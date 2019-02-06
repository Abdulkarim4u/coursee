//
//  CourseDetailViewController.swift
//  Coursee
//
//  Created by Malori Morow on 06/02/19.
//  Copyright © 2019 Malori Morow. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController
{
    @IBOutlet weak var joinCourseButton: UIButton!
    @IBOutlet weak var courseTitleLabel: UILabel!
    @IBOutlet weak var courseDescriptionTextView: UITextView!
    @IBOutlet weak var courseFeaturedImageView: UIImageView!
    
    var course: Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        courseFeaturedImageView.image = course.featuredImage
        courseTitleLabel.text = course.title
        courseDescriptionTextView.text = course.description
        
        joinCourseButton.setTitle("Join \(course.instructor)", for: [])
        
        self.navigationItem.title = course.instructor
        
        // configure join button
        joinCourseButton.layer.cornerRadius = 3.0
        joinCourseButton.layer.masksToBounds = true
    }
    
    @IBAction func playButtonDidTap(_ sender: AnyObject)
    {
        
    }
    
    @IBAction func joinButtonDidTap(_ sender: AnyObject)
    {
        let alertController = UIAlertController(title: "Congratulations!", message: "You just enrolled in \(course.title) successfully!", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    struct Storyboard {
        static let presentPlayer = "PresentPlayer"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == Storyboard.presentPlayer {
            if let playerVC = segue.destination as? PlayerViewController {
                playerVC.videoURL = course.introductionVideoURL
            }
        }
    }
}













