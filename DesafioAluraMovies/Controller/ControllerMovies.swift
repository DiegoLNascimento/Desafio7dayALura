//
//  ControllerMovies.swift
//  DesafioAluraMovies
//
//  Created by Diego on 20/11/22.
//

import UIKit

class ControllerMovies: NSObject {
    
    var moviesList: Movies?
    let requestMoviews = Request()
    
    func request(completion: @escaping(Bool) -> Void) {
        requestMoviews.request(custon: Movies.self) { [weak self] movies , success in
            if success {
                self?.moviesList = movies
                completion(true)
            }else {
                completion(false)
            }
        }
    }
    
    func numberOfRows() -> Int{
        return moviesList?.results?.count ?? 0
        
    }
    
    func getIndexPath(indexPath: IndexPath) -> Result? {
        return moviesList?.results?[indexPath.row]
        
    }
}
