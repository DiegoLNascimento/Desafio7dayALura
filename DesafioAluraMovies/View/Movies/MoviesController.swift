//
//  ViewController.swift
//  DesafioAluraMovies
//
//  Created by Diego on 18/11/22.
//

import UIKit
import Foundation
import SDWebImage


class MoviesController: UIViewController {
    
    var customMovies: MoviesView?
    let controller = ControllerMovies()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setcustonMovies()
        request()
        setDelegateDatasorce()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setBackgroundColor()
    }
    
    func setcustonMovies() {
        customMovies = MoviesView()
        view = customMovies
    }

    func request() {
        controller.request { [weak self]success in
            if success {
                DispatchQueue.main.async {
                    self?.customMovies?.tableView.reloadData()
                }
            }
        }
    }
    
    func setDelegateDatasorce() {
        self.customMovies?.setProtocools(delegate: self, datasorce: self)
    }
    
}

extension MoviesController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellsController.identifier, for: indexPath) as? CellsController
        cell?.dataMovies(data: controller.getIndexPath(indexPath: indexPath))
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension MoviesController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let detailMovies = DetailController()
        
        detailMovies.controllerDetail.moviesListDetail = controller.getIndexPath(indexPath: indexPath)
        
        tableView.deselectRow(at: indexPath, animated: true)
        self.navigationController?.pushViewController(detailMovies, animated: true)
    }
}

