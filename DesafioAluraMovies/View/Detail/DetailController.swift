//
//  DetailController.swift
//  DesafioAluraMovies
//
//  Created by Diego on 25/11/22.
//

import UIKit
import SDWebImage


class DetailController: UIViewController {
    
    let controllerDetail = ControllerDetail()
    var custonMovieDetail: DetailView?

    override func viewDidLoad() {
        super.viewDidLoad()
        setCustonMovieDetail()
        dataMovies()
        
    }
    
    func dataMovies() {
        custonMovieDetail?.poster.sd_setImage(with: URL(string: ("https://image.tmdb.org/t/p/w500\(controllerDetail.poster)")))
        custonMovieDetail?.titleMoves.text = controllerDetail.titleMovies
        custonMovieDetail?.noteMovies.text = ("Classificação dos Usuarios:\(controllerDetail.noteMovies)")
        custonMovieDetail?.descriptionMovies.text = controllerDetail.descriptionMovies
    }
    
    func setCustonMovieDetail() {
        custonMovieDetail = DetailView()
        view = custonMovieDetail
    }
}
