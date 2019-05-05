//
//  ViewController.swift
//  BasicMVVM
//
//  Created by Harish Kumar on 05/05/19.
//  Copyright © 2019 Harish Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let dateModel = DateModel(date: Date())
        let dateViewModel = DateViewModel(date: dateModel)
        let myDateView = DateView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        myDateView.daysAhead.text = dateViewModel.daysAhead
        myDateView.daysBehind.text = dateViewModel.daysBehind
        
        self.view.addSubview(myDateView)
        
    }


}

