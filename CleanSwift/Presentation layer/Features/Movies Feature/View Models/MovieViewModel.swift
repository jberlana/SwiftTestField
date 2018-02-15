//
//  MovieViewModel.swift
//  CleanSwift
//
//  Created by Javier Berlana on 14/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

class MovieViewModel {
  
  private let movie: Movie
  
  var title: String { return movie.title }
 
  init(with movie: Movie) {
    self.movie = movie
  }
  
}


extension MovieViewModel: Equatable {
  
  static func == (lhs: MovieViewModel, rhs: MovieViewModel) -> Bool {
    return lhs.movie.id == rhs.movie.id
  }
  
}
