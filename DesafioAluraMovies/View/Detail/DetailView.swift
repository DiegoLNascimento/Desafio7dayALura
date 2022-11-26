//
//  DetailView.swift
//  DesafioAluraMovies
//
//  Created by Diego on 25/11/22.
//

import UIKit

class DetailView: UIView {
    
    var titleMoves = LabelDefault(font: .boldSystemFont(ofSize: 20.0))
    
    var poster = ImageViewDefault(corner: 39.17)
    
    var noteMovies = LabelDefault(font: .boldSystemFont(ofSize: 14 ),textColor: .white.withAlphaComponent(1))
    
    var descriptionMovies = LabelDefault(font: .boldSystemFont(ofSize: 18 ),textColor: .white.withAlphaComponent(0.75))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addview()
        setConstraints()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addview() {
        self.addSubview(titleMoves)
        self.addSubview(poster)
        self.addSubview(noteMovies)
        self.addSubview(descriptionMovies)
        
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            titleMoves.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 32.0),
            titleMoves.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleMoves.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            poster.topAnchor.constraint(equalTo: titleMoves.bottomAnchor, constant: 32.0),
            poster.centerXAnchor.constraint(equalTo: centerXAnchor),
            poster.widthAnchor.constraint(equalToConstant: 192),
            poster.heightAnchor.constraint(equalToConstant: 264),
            
            noteMovies.topAnchor.constraint(equalTo: poster.bottomAnchor, constant: 32.0),
            noteMovies.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            descriptionMovies.topAnchor.constraint(equalTo: noteMovies.bottomAnchor, constant: 32.0),
            descriptionMovies.leadingAnchor.constraint(equalTo: leadingAnchor,constant:  16),
            descriptionMovies.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -16)
            
        ])
    }
}
