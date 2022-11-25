//
//  CellsController.swift
//  DesafioAluraMovies
//
//  Created by Diego on 19/11/22.
//

import UIKit
import SDWebImage

class CellsController: UITableViewCell {

    static var identifier = "CellsController"
    
    lazy var custonCellsView: CellsView = {
        let view = CellsView()
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        
        self.addSubview(custonCellsView)
        configureCustonCellsView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func dataMovies(data: Result?) {
        custonCellsView.poster.sd_setImage(with: URL(string: ("https://image.tmdb.org/t/p/w500\(data?.posterPath ?? "")")))
        custonCellsView.nameMovies.text = data?.originalTitle ?? ""
        custonCellsView.launchMovies.text = ("Lançamento:\(data?.releaseDate?.formatDate() ?? "")")
        

    }
    

    func configureCustonCellsView() {
        NSLayoutConstraint.activate([
        
            custonCellsView.topAnchor.constraint(equalTo: topAnchor),
            custonCellsView.leadingAnchor.constraint(equalTo: leadingAnchor),
            custonCellsView.trailingAnchor.constraint(equalTo: trailingAnchor),
            custonCellsView.bottomAnchor.constraint(equalTo: topAnchor),
        ])
    }
}
