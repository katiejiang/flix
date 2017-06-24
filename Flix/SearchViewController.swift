//
//  SearchViewController.swift
//  Flix
//
//  Created by Katie Jiang on 6/23/17.
//  Copyright © 2017 Katie Jiang. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {
    @IBOutlet var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        searchBar.delegate = self
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
