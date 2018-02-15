//
//  AlertShowable.swift
//  CleanSwift
//
//  Created by Javier Berlana on 14/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

protocol AlertShowable: class {
  func show(message text: String)
}

extension AlertShowable where Self: UIViewController {
  
  func show(message text: String) {
    let alertController = UIAlertController(title: nil, message: text, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .cancel) { _ in }
    alertController.addAction(okAction)
    present(alertController, animated: true, completion: nil)
  }
}
