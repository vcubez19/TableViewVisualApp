//
//  ViewController.swift
//  TableViewVisualApp
//
//  Created by Vincent Cubit on 9/28/21.
//


import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let petArray = ["cat", "dog", "parakeet", "parrot", "canary", "finch", "tropical fish", "goldfish", "sea horses", "hamster", "gerbil", "rabbit", "turtle", "snake", "lizard", "hermit crab"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.petArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        cell?.textLabel?.text = self.petArray[indexPath.row]
        
        
        return cell!
        
        
    }
    

}

