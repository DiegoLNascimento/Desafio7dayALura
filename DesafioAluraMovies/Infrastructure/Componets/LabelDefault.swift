//
//  LabelDefault.swift
//  DesafioAluraMovies
//
//  Created by Diego on 23/11/22.
//

import UIKit
class LabelDefault: UILabel {
    
    init(text: String = "Filmes Populares", font: UIFont = .systemFont(ofSize: 28, weight: .bold), textColor: UIColor = .white, textAlignment: NSTextAlignment = .center ) {
         super.init(frame: .zero)
        initDefault(text: text, font: font, textColor: textColor, textAlignment: textAlignment)
    }
    
    func initDefault(text: String, font: UIFont, textColor: UIColor, textAlignment: NSTextAlignment) {
        self.text = text
        self.font = font
        self.textColor = textColor
        self.numberOfLines = 0
        self.textAlignment = textAlignment
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
