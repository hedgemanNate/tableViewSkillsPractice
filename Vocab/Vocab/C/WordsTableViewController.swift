//
//  WordsTableViewController.swift
//  Vocab
//
//  Created by Nathan Hedgeman on 9/18/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    //Properties
    var vocabWords: [VocabWord] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefineSegue" {
            guard let detailedVC = segue.destination as? DefinitionViewController else { return }
            guard let index = tableView.indexPathForSelectedRow else { return }
            
            detailedVC.vocabWord = vocabWords[index.row]
        }
        
        // Get the new view controller using segue.destination.
        
        // Pass the selected object to the new view controller.
    }
    

}
