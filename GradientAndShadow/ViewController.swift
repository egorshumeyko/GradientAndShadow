//
//  ViewController.swift
//  GradientAndShadow
//
//  Created by Егор Шумейко on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create View
        let container = UIView()
        let newView = UIView()
        view.addSubview(container)
        container.addSubview(newView)
        
        // Rounded edges
        
        container.frame = CGRect(x: 100, y: view.frame.midY, width: 125, height: 125)
        container.layer.cornerRadius = 20.0
        container.layer.masksToBounds = false
        
        newView.layer.cornerRadius = 20.0
        newView.layer.masksToBounds = true
        newView.frame = container.bounds
        
        
        // Gradient
        let gradient = CAGradientLayer()
        gradient.frame = newView.bounds
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        newView.layer.insertSublayer(gradient, at: 0)

        // Shadows
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOffset = CGSize(width: 10, height: 10)
        container.layer.shadowOpacity = 0.7
        container.layer.shadowRadius = 20.0
        
        //Constrains
        view.translatesAutoresizingMaskIntoConstraints = false
        container.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            container.widthAnchor.constraint(equalToConstant: 125),
            container.heightAnchor.constraint(equalToConstant: 125),
            container.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            container.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    
    }

}

