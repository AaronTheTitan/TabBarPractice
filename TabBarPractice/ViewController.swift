//
//  ViewController.swift
//  TabBarPractice
//
//  Created by Aaron Bradley on 4/14/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func showTabBarPressed(sender: UIButton) {

//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let orangeViewController = storyboard?.instantiateViewControllerWithIdentifier("OrangeViewController") as! OrangeViewController
    let blueViewController = storyboard?.instantiateViewControllerWithIdentifier("BlueViewController") as! BlueViewController
//    let grayViewController = storyboard?.instantiateViewControllerWithIdentifier("GrayViewController") as? GrayViewController

    // tab bar itesm
    let orangeTabBarItem = UITabBarItem(title: "Orange", image: nil, selectedImage: nil)
    let blueTabBarItem = UITabBarItem(title: "Blue", image: nil, selectedImage: nil)

    orangeViewController.tabBarItem = orangeTabBarItem
    blueViewController.tabBarItem = blueTabBarItem

    let tabBarViewControllers = [orangeViewController, blueViewController]

    let tabBarViewController = UITabBarController()
    tabBarViewController.viewControllers = tabBarViewControllers

    presentViewController(tabBarViewController, animated: true, completion: nil)


  }




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
