//
//  BlueViewController.swift
//  TabBarPractice
//
//  Created by Aaron Bradley on 4/14/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

  var text: String?
  @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

  override func viewWillAppear(animated: Bool) {
    if let text = text {
      label.text = text
    }

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
