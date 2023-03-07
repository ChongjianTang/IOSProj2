//
//  DetailedViewController.swift
//  proj2
//
//  Created by Chongjian Tang on 3/6/23.
//

import UIKit
import Nuke



class DetailViewController: UIViewController {
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var averageVoteLabel: UILabel!
    @IBOutlet weak var totalVotesLabel: UILabel!
    
    @IBOutlet weak var popularityLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overviewLabel.numberOfLines = 0
        overviewLabel.lineBreakMode = .byWordWrapping

        // Do any additional setup after loading the view.
        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView)
        movieTitleLabel.text = movie.title
        averageVoteLabel.text = String(format: "%.1f", movie.vote_average) + " Vote Average"
        totalVotesLabel.text = String(movie.vote_count) + " Votes"
        popularityLabel.text = String(format: "%.1f", movie.popularity) + " Popularity"
        overviewLabel.text = movie.overview
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
