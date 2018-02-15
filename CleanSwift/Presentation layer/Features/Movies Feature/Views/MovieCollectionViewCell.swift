//
//  MovieCollectionViewCell.swift
//  CleanSwift
//
//  Created by Javier Berlana on 15/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
  
  static let ReuseId = "ReuseMovieCollectionViewCell"
  static let NibName = "MovieCollectionViewCell"
  
  @IBOutlet weak var titleLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  func bind(movie: MovieViewModel) {
    self.titleLabel.text = movie.title
  }
  
}
