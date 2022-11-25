//
//  CellsControllerTableViewCell.swift
//  DesafioAluraMovies
//
//  Created by Diego on 19/11/22.
//

import UIKit

class CellsView: UIView {
    
    lazy var poster = ImageViewDefault()
        
    lazy var nameMovies = LabelDefault(font: .boldSystemFont(ofSize: 20.0),textAlignment: .left)
        
    lazy var launchMovies = LabelDefault(font: .boldSystemFont(ofSize: 16) ,textColor: .white.withAlphaComponent(0.75), textAlignment: .left)
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        setConstraints()
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        self.addSubview(poster)
        self.addSubview(nameMovies)
        self.addSubview(launchMovies)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            poster.topAnchor.constraint(equalTo: topAnchor),
            poster.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 30),
            poster.widthAnchor.constraint(equalToConstant: 90),
            poster.heightAnchor.constraint(equalToConstant: 120),
            
            nameMovies.topAnchor.constraint(equalTo: topAnchor,constant: 45),
            nameMovies.leadingAnchor.constraint(equalTo: poster.trailingAnchor,constant: 15),
            nameMovies.widthAnchor.constraint(equalToConstant: 250),
            nameMovies.heightAnchor.constraint(equalToConstant: 19),
            
            launchMovies.topAnchor.constraint(equalTo: nameMovies.bottomAnchor,constant: 12),
            launchMovies.leadingAnchor.constraint(equalTo: poster.trailingAnchor,constant: 15),
            launchMovies.widthAnchor.constraint(equalToConstant: 200),
            launchMovies.heightAnchor.constraint(equalToConstant: 19),
            
        ])
    }
}
