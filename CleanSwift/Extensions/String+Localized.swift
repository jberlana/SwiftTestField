//
//  String+Localized.swift
//  CleanSwiftTest
//
//  Created by Javier Berlana on 14/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import Foundation

extension String {
  
  var localized: String {
    return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
  }
  
}

