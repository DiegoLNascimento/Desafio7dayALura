//
//  ImageViewDefault.swift
//  DesafioAluraMovies
//
//  Created by Diego on 23/11/22.
//

import UIKit

class ImageViewDefault: UIImageView {
    
    init(corner: CGFloat = 18) {
        super.init(frame: .zero)
        initDefault(corner: corner)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initDefault(corner: CGFloat) {
        self.layer.cornerRadius = corner
        self.clipsToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
