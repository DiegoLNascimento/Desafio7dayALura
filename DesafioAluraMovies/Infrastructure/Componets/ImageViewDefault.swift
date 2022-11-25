//
//  ImageViewDefault.swift
//  DesafioAluraMovies
//
//  Created by Diego on 23/11/22.
//

import UIKit

class ImageViewDefault: UIImageView {
    
    init() {
        super.init(frame: .zero)
        initDefault()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initDefault() {
        self.backgroundColor = UIColor(red: 46/255, green: 19/255, blue: 113/255, alpha: 1.0)
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
