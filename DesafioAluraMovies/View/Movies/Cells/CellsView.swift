//
//  CellsControllerTableViewCell.swift
//  DesafioAluraMovies
//
//  Created by Diego on 19/11/22.
//

import UIKit

class CellsView: UIView {
    
    lazy var poster: UIImageView = {
        let poster = UIImageView(frame: .zero)
        poster.layer.cornerRadius = 18
        poster.clipsToBounds = true
        poster.translatesAutoresizingMaskIntoConstraints = false
        return poster
    }()
    
    lazy var nameMovies: UILabel = {
        let nameMovies = UILabel(frame: .zero)
        nameMovies.font = .systemFont(ofSize: 16, weight: .bold)
        nameMovies.textColor = .white
        nameMovies.textAlignment = .center
        nameMovies.text = "nameMovies"
        nameMovies.translatesAutoresizingMaskIntoConstraints = false
        return nameMovies
    }()
    
    lazy var launchMovies: UILabel = {
        let launchMovies = UILabel(frame: .zero)
        launchMovies.font = .systemFont(ofSize: 16, weight: .bold)
        launchMovies.textColor = .white
        launchMovies.textAlignment = .center
        launchMovies.text = "launchMovies"
        launchMovies.translatesAutoresizingMaskIntoConstraints = false
        return launchMovies
    }()
    
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
            nameMovies.widthAnchor.constraint(equalToConstant: 170),
            nameMovies.heightAnchor.constraint(equalToConstant: 19),
            
            launchMovies.topAnchor.constraint(equalTo: nameMovies.bottomAnchor,constant: 05),
            launchMovies.leadingAnchor.constraint(equalTo: poster.trailingAnchor,constant: 15),
            launchMovies.widthAnchor.constraint(equalToConstant: 138),
            launchMovies.heightAnchor.constraint(equalToConstant: 19),
            
        ])
    }
}
