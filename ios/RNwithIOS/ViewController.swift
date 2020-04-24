//
//  ViewController.swift
//  RNwithIOS
//
//  Created by Djuro Alfirevic on 4/24/20.
//  Copyright © 2020 Djuro Alfirevic. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    // MARK: - Properties
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction private func highScoreButtonTapped() {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let mockData: NSDictionary = [
            "scores": [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]

        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RNHighScores",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        
        let vc = UIViewController()
        vc.view = rootView
        
        present(vc, animated: true)
    }

}
