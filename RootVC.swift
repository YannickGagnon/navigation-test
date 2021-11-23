//
//  RootVC.swift
//  NavigationTest
//
//  Created by Yannick Gagnon on 2021-11-16.
//

import UIKit

class RootVC : UIViewController {

    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.lightGray
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = UIColor.red
        
        self.navigationController?.navigationItem.standardAppearance = appearance
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = self.navigationController?.navigationBar.standardAppearance
    }
}
