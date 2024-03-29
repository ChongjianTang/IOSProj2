//
//  MovieCell.swift
//  proj2
//
//  Created by Chongjian Tang on 3/6/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.title
        movieOverviewLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.poster_path, into: movieImageView)
    }

}
