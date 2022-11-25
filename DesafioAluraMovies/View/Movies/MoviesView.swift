//
//  MoviesView.swift
//  DesafioAluraMovies
//
//  Created by Diego on 18/11/22.
//

import UIKit

class MoviesView: UIView {
    
    lazy var titile = LabelDefault(font: .systemFont(ofSize: 24.0, weight: .bold))
        
    lazy var tableView = TableViewDefault()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        setConstraints()
        backgroundColor = UIColor(red: 46/255, green: 19/255, blue: 113/255, alpha: 1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setProtocools( delegate: UITableViewDelegate, datasorce: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = datasorce
    }
    
    func addView(){
        self.addSubview(titile)
        self.addSubview(tableView)
        
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            titile.topAnchor.constraint(equalTo: topAnchor,constant: 87),
            titile.centerXAnchor.constraint(equalTo: centerXAnchor),
            titile.widthAnchor.constraint(equalToConstant: 225),
            titile.heightAnchor.constraint(equalToConstant: 35),
            
            tableView.topAnchor.constraint(equalTo: titile.bottomAnchor, constant: 45),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}
