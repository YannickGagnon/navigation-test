//
//  BaseVC.swift
//  NavigationTest
//
//  Created by Yannick Gagnon on 2021-11-22.
//

import UIKit

class BaseVC: UIViewController {
    
    private var currentAppearance: UINavigationBarAppearance? = nil
    
    public func applyDefaultTheme() {
        let arrowLeftImage = UIImage(named: "arrow-left")
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .systemPink
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        appearance.setBackIndicatorImage(arrowLeftImage?.withTintColor(.white), transitionMaskImage: arrowLeftImage)
        
        let buttonAppearance = UIBarButtonItemAppearance(style: .plain)
        buttonAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        appearance.buttonAppearance = buttonAppearance
        
        navigationItem.backBarButtonItem?.tintColor = .white
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
        currentAppearance = appearance
    }
    
    public func applyTransparentTheme() {
        let arrowLeftImage = UIImage(named: "arrow-left")

        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.setBackIndicatorImage(arrowLeftImage, transitionMaskImage: arrowLeftImage)
        
        let buttonAppearance = UIBarButtonItemAppearance(style: .plain)
        buttonAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        appearance.buttonAppearance = buttonAppearance
        
        navigationItem.backBarButtonItem?.tintColor = .black
        navigationItem.rightBarButtonItem?.tintColor = .black
        
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
        currentAppearance = appearance
    }
}
