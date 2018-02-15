//
//  MoviesViewController.swift
//  CleanSwiftTest
//
//  Created by Javier Berlana on 12/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

protocol MovieListDisplayLogic: class {
  func didReceiveMovies(_ movies:[MovieViewModel])
}


class MoviesListViewController: ViewController, Refreshable {
  
  var presenter: MovieListPresentationLogic!
  var movies = [MovieViewModel]()
  
  @IBOutlet weak var collectionView: UICollectionView!
  var refreshControl: UIRefreshControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Movies".localized
    
    setup()
    setupCollectionView(self.collectionView)
    setRefreshControlOn(collectionView, action: #selector(MoviesListViewController.refresh))
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  fileprivate func setup() {
    self.presenter = MovieListPresenter(view: self)
  }
  
  @objc func refresh() {
    self.presenter.refreshMovies()
  }
  
  fileprivate func setupCollectionView(_ collectionView: UICollectionView) {
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.register(UINib(nibName: MovieCollectionViewCell.NibName, bundle:nil),forCellWithReuseIdentifier: MovieCollectionViewCell.ReuseId)
  }
  
}


extension MoviesListViewController: UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.movies.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCollectionViewCell.ReuseId, for: indexPath) as! MovieCollectionViewCell
    cell.bind(movie: self.movies[indexPath.row])
    return cell
  }
  
}


extension MoviesListViewController: UICollectionViewDelegate {
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let selectedMovie = self.movies[indexPath.row]
    self.presenter.didTapOnMovie(selectedMovie)
  }
  
}


extension MoviesListViewController: MovieListDisplayLogic {
  
  func didReceiveMovies(_ movies:[MovieViewModel]) {
    self.movies = movies
    self.collectionView.reloadData()
    endRefreshing()
  }
  
}
