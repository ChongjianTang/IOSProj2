//
//  PostersViewController.swift
//  proj2
//
//  Created by Chongjian Tang on 3/13/23.
//

import UIKit
import Nuke

class PostersViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Get a collection view cell (based in the identifier you set in storyboard) and cast it to our custom AlbumCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell
        
        // Use the indexPath.item to index into the albums array to get the corresponding album
        let movie = movies[indexPath.item]
        
        // Get the artwork image url
        let imageUrl = movie.poster_path
        
        // Set the image on the image view of the cell
        Nuke.loadImage(with: imageUrl, into: cell.posterImageView)
        
        return cell
    }
    
    
    var movies: [Movie] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self

        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
        // Create a URL for the request
        // In this case, the custom search URL you created in in part 1
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=2e2d896999179f519766259fe8cde6c4")!
        
        // Use the URL to instantiate a request
        let request = URLRequest(url: url)
        
        // Create a URLSession using a shared instance and call its dataTask method
        // The data task method attempts to retrieve the contents of a URL based on the specified URL.
        // When finished, it calls it's completion handler (closure) passing in optional values for data (the data we want to fetch), response (info about the response like status code) and error (if the request was unsuccessful)
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            
            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }
            
            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }
            
            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
            do {
                // Create a JSON Decoder
                let decoder = JSONDecoder()
                
                
                // Use the JSON decoder to try and map the data to our custom model.
                // TrackResponse.self is a reference to the type itself, tells the decoder what to map to.
                let response = try decoder.decode(MoviesResponse.self, from: data)
                
                // Access the array of tracks from the `results` property
                var movies = response.results
                
                for (index, movie) in movies.enumerated() {
                    let backdropPathString = "https://image.tmdb.org/t/p/w500" + movie.backdrop_path.absoluteString
                    let posterPathString = "https://image.tmdb.org/t/p/w500" + movie.poster_path.absoluteString
                    movies[index] = Movie(id: movie.id,backdrop_path: URL(string: backdropPathString)!, overview: movie.overview, popularity: movie.popularity, poster_path: URL(string: posterPathString)!, title: movie.title, vote_average: movie.vote_average, vote_count: movie.vote_count)
                }
                
                DispatchQueue.main.async {
                    self?.movies = movies
                    self?.collectionView.reloadData()
                }
                print("✅ \(movies)")
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }
        
        // Initiate the network request
        task.resume()
        
        
        // Get a reference to the collection view's layout
        // We want to dynamically size the cells for the available space and desired number of columns.
        // NOTE: This collection view scrolls vertically, but collection views can alternatively scroll horizontally.
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 0

        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 4

        // Set this to however many columns you want to show in the collection.
        let numberOfColumns: CGFloat = 3

        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns

        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: 1.5*width)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller
        // Get the cell that triggered the segue
        if let cell = sender as? UICollectionViewCell,
           // Get the index path of the cell from the table view
           let indexPath = collectionView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {

            // Use the index path to get the associated track
            let movie = movies[indexPath.row]

            // Set the track on the detail view controller
            detailViewController.movie = movie
        }
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
