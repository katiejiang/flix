//
//  NowPlayingViewController.swift
//  Flix
//
//  Created by Katie Jiang on 6/21/17.
//  Copyright © 2017 Katie Jiang. All rights reserved.
//

import UIKit

class NowPlayingViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [[String: Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=5f89533e24a2ff0828389c5e1cb6f8e8")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This will run when the network reqeust returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                self.movies = dataDictionary["results"] as! [[String: Any]]
                self.tableView.reloadData()
            }
        }
        task.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row]
        let title = movie["title"] as! String
        let overview = movie["overview"] as! String
        cell.titleLabel.text = title
        cell.overviewLabel.text = overview
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
