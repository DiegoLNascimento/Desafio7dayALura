//
//  GetMovies.swift
//  DesafioAluraMovies
//
//  Created by Diego on 20/11/22.


import Foundation

class Request {
    
    func request<T: Codable> (custon: T.Type, completion: @escaping(T,Bool) -> Void)  {
        
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=62aeabb1ac5f2207cfef4899bea57a4f&language=pt-BR&page=1") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            let moviess = try? JSONDecoder().decode(custon, from: data ?? Data())
            guard let moviess else {return}
            completion(moviess,true)
        }
        
        task.resume()
    }
}

