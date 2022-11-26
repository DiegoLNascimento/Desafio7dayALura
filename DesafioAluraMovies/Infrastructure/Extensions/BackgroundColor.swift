//
//  BackgroundColor.swift
//  DesafioAluraMovies
//
//  Created by Diego on 22/11/22.
//

import UIKit

extension UIViewController {
    
    func setBackgroundColor() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor(red: 46/255, green: 19/255, blue: 113/255, alpha: 1.0).cgColor,
                           UIColor(red: 19/255, green: 11/255, blue: 43/255, alpha: 1.0).cgColor]
        gradient.startPoint = CGPoint(x: 1, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
