//
//  MovieCell.swift
//  Flixster
//
//  Created by Ashley Guerra on 3/4/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.original_title
        descriptionLabel.text = movie.overview
        
        // Load image via Nuke Library image loading helper method
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" + movie.poster_path.absoluteString)!, into: movieImageView)
        
    }
}



