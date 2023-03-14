//
//  DetailViewController.swift
//  Flixster
//
//  Created by Ashley Guerra on 3/4/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var voteAvgLabel: UILabel!
    @IBOutlet weak var voteCountLabel: UILabel!
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitleLabel.text = movie.original_title
        descriptionLabel.text = movie.overview
        voteAvgLabel.text = String(movie.vote_average) + " Vote Average"
        voteCountLabel.text = String(movie.vote_count) + " Votes"
        popularity.text = String(movie.popularity) + " Popularity"
        
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" + movie.backdrop_path.absoluteString)!, into: backdropImageView)
        
    }
    

}
