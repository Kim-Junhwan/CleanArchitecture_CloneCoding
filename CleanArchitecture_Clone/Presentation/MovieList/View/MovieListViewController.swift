//
//  MovieListViewController.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/15.
//

import UIKit

class MovieListViewController: UIViewController, StoryboardInstantiable, Alertable {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var searchBarContainer: UIView!
    
    @IBOutlet weak var movieListContainer: UIView!
    
    @IBOutlet weak var emptyDataLabel: UILabel!
    
    @IBOutlet weak var suggestionsListContainer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
