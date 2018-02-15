//
//  SceneRouting.swift
//  CleanSwift
//
//  Created by Javier Berlana on 14/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

struct ViewControllerID {
  static let MoviesLists = "MoviesListViewController"
  static let MovieDetail = "MovieDetailViewController"
}


class MoviesRouting {

  class func getMovieDetailViewController() -> MovieDetailViewController {
    return UIStoryboard.movies().instantiateViewController(withIdentifier: ViewControllerID.MovieDetail) as! MovieDetailViewController
  }
  
}


extension UIStoryboard {
  
  struct StoryboardName{
    static let Movies = "Movies"
  }
  
  class func movies() -> UIStoryboard {
    return UIStoryboard(name: StoryboardName.Movies, bundle: nil)
  }
  
}
