//
//  OrangViewController.swift
//  TabBarPractice
//
//  Created by Aaron Bradley on 4/14/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController, UITabBarControllerDelegate {

  @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

      tabBarController?.delegate = self
//      tabBarController?.viewControllers?[0] // first view controller

//      if let blueViewController = tabBarController?.viewControllers?[1] as? BlueViewController {
//        blueViewController.text = textField.text
//
//      }

    }


  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    textField.text = nil

  }


  // MARK: - TabBar Delegate methods
  func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
    println("shouldSelect: \(viewController)")

    if let blueViewController = viewController as? BlueViewController {
      blueViewController.text = textField.text
      println("blue!")
    }

    if let grayViewController = viewController as? GrayViewController {
      println("gray!")
    }

    return true
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
