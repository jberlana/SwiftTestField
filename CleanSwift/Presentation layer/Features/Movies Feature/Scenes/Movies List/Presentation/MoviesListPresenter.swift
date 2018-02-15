//
//  MoviesListPresenter.swift
//  CleanSwiftTest
//
//  Created by Javier Berlana on 12/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

protocol MovieListPresentationLogic: class {
  func refreshMovies()
  func didTapOnMovie(_ movie: MovieViewModel)
}


class MovieListPresenter {
  
  fileprivate weak var view: MovieListDisplayLogic!
  fileprivate var getMoviesUseCase: GetMoviesUseCase
  fileprivate var router: MovieListRoutingLogic
  
  init(view: MoviesListViewController) {
    self.view = view
    self.getMoviesUseCase = GetMoviesUseCase()
    self.router = MoviesListRouter(view: view)
  }
  
}


extension MovieListPresenter: MovieListPresentationLogic {
  
  func refreshMovies() {
    
    let movie1 = Movie(id: 1, title: "Sharknado", releaseDate: nil, overview: nil, imagePath: nil)
    let movieVM = MovieViewModel(with: movie1)
    
    self.view.didReceiveMovies([movieVM])
  }
  
  func didTapOnMovie(_ movie: MovieViewModel) {
    self.router.goToMovieDetail(movie: movie, animated: true)
  }
  
}
