//
//  MoviesListRouter.swift
//  CleanSwiftTest
//
//  Created by Javier Berlana on 12/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

protocol MovieListRoutingLogic {
  func goToMovieDetail(movie:MovieViewModel, animated: Bool)
}

class MoviesListRouter {
  
  weak var viewController: UIViewController!
  
  init(view: UIViewController) {
    self.viewController = view
  }
  
}


extension MoviesListRouter: MovieListRoutingLogic {
  
  func goToMovieDetail(movie:MovieViewModel, animated: Bool) {
    let movieDetailViewController = MoviesRouting.getMovieDetailViewController()
    movieDetailViewController.movie = movie
    
    if let nvc = viewController.navigationController {
      nvc.pushViewController(movieDetailViewController, animated: animated)
    }
    else {
      self.viewController.present(movieDetailViewController, animated: animated)
    }
  }
  
}
