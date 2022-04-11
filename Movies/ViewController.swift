//
//  ViewController.swift
//  Movies
//
//  Created by Gwinyai Nyatsoka on 7/4/2022.
//

import UIKit

struct Movie {
    var movieImage: UIImage?
    var movieTitle: String
    var movieDescription: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let movies = [Movie(movieImage: nil, movieTitle: "SpiderMan", movieDescription: "The third movie"),
                    Movie(movieImage: nil, movieTitle: "BatMan", movieDescription: "The Remake")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        cell.movieTitleLabel.text = movie.movieTitle
        cell.movieDescriptionLabel.text =  movie.movieDescription
        return cell
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(140)
    }
    
}

