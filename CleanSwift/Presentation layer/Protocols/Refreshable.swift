//
//  Refreshable.swift
//  CleanSwiftTest
//
//  Created by Javier Berlana on 14/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

protocol Refreshable: class {
  var refreshControl: UIRefreshControl! { get set }
  func beginRefreshing()
  func endRefreshing()
}

extension Refreshable {
  
  func setRefreshControlOn(_ tableView: UITableView, action: Selector) {
    guard self.refreshControl == nil else { return }
    
    let refreshControl = UIRefreshControl()
    refreshControl.addTarget(self, action: action, for: .valueChanged)
    tableView.refreshControl = refreshControl
    self.refreshControl = refreshControl
  }
  
  func setRefreshControlOn(_ collectionView: UICollectionView, action: Selector) {
    guard self.refreshControl == nil else { return }
    
    let refreshControl = UIRefreshControl()
    refreshControl.addTarget(self, action: action, for: .valueChanged)
    collectionView.refreshControl = refreshControl
    self.refreshControl = refreshControl
  }
  
  func beginRefreshing() {
    refreshControl?.beginRefreshing()
  }
  
  func endRefreshing() {
    refreshControl?.endRefreshing()
  }
}

