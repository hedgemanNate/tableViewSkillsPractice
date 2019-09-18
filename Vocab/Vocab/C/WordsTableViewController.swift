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
    let word1 = VocabWord(word: "Free", definition: "No cost")
    let word2 = VocabWord(word: "Ass Whooping", definition: "WHat happens when you are being a badass little kid")
    let word3 = VocabWord(word: "Foo", definition: "The beganning of being a fighter")
    let word4 = VocabWord(word: "Money", definition: "That thing that you don't have")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vocabWords.append(word1)
        vocabWords.append(word2)
        vocabWords.append(word3)
        vocabWords.append(word4)
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
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            detailedVC.vocabWord = vocabWords[indexPath.row]
        }
        
    }
    
    
}
