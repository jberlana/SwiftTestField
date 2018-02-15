//
//  MovieDetailViewController.swift
//  CleanSwift
//
//  Created by Javier Berlana on 14/02/2018.
//  Copyright © 2018 Javier Berlana. All rights reserved.
//

import UIKit

class MovieDetailViewController: ViewController {
  
  var movie: MovieViewModel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = self.movie.title
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
