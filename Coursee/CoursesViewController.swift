//
//  CoursesViewController.swift
//  Coursee
//
//  Created by Malori Morow on 06/02/19.
//  Copyright © 2019 Malori Morow. All rights reserved.
//

import UIKit

class CoursesViewController: UIViewController
{
    @IBOutlet weak var chefCourseButton: UIButton!
    @IBOutlet weak var popStarCourseButton: UIButton!
    @IBOutlet weak var developerCourseButton: UIButton!
    
    var courses: [Course] = CourseStore.downloadNewCourses()
    var selectedCourse: Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.updateUI()
    }
    
    func updateUI()
    {
        let chefCourse = courses[0]
        chefCourseButton.setImage(chefCourse.buttonImage, for: [])
        
        let popStarCourse = courses[1]
        popStarCourseButton.setImage(popStarCourse.buttonImage, for: [])
        
        let developerCourse = courses[2]
        developerCourseButton.setImage(developerCourse.buttonImage, for: [])
    }
    
    @IBAction func chefCourseDidTap(_ sender: AnyObject)
    {
        let chefCourse = self.courses[0]
        selectedCourse = chefCourse
        print(selectedCourse.title)
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    
    @IBAction func popStarCourseDidTap(_ sender: AnyObject)
    {
        let popStarCourse = self.courses[1]
        selectedCourse = popStarCourse
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    
    @IBAction func developerCourseDidTap(_ sender: AnyObject)
    {
        let developerCourse = self.courses[2]
        selectedCourse = developerCourse
        
        self.performSegue(withIdentifier: Storyboard.showCourseDetail, sender: nil)
    }
    
    struct Storyboard {
        // identifier of the segue
        static let showCourseDetail = "ShowCourseDetail"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == Storyboard.showCourseDetail {
            if let courseDetailViewController = segue.destination as? CourseDetailViewController {
                courseDetailViewController.course = self.selectedCourse
            }
        }
    }
    
}











