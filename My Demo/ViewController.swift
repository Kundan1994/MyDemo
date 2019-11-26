//
//  ViewController.swift
//  My Demo
//
//  Created by LMS on 26/11/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fantasticView = FantasticView(frame: self.view.bounds)
        self.view.addSubview(fantasticView)
    }


}

