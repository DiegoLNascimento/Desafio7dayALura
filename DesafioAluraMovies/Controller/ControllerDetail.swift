//
//  ControllerDetail.swift
//  DesafioAluraMovies
//
//  Created by Diego on 25/11/22.
//

import UIKit
import SDWebImage

class ControllerDetail: NSObject {
    
    var moviesListDetail: Result?
    
    func  detailMovie(moviee: Result) {
        self.moviesListDetail = moviee
    }
    
    var titleMovies : String {
        return moviesListDetail?.originalTitle ?? ""
    }
    
    var poster: String {
        return moviesListDetail?.posterPath ?? ""
    }
    
    var noteMovies: String {
        return moviesListDetail?.voteAverage?.description ?? ""
    }
    
    var descriptionMovies: String {
        return moviesListDetail?.overview?.description ?? "" 
    }
}
