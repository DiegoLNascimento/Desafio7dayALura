//
//  TableViewDefault.swift
//  DesafioAluraMovies
//
//  Created by Diego on 23/11/22.
//

import UIKit

class TableViewDefault: UITableView {
    
    init() {
        super.init(frame: .zero, style: .plain)
        
        initDefault()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initDefault() {
        self.backgroundColor = .clear
        self.translatesAutoresizingMaskIntoConstraints = false
        self.register(CellsController.self, forCellReuseIdentifier: CellsController.identifier)
    }
}
