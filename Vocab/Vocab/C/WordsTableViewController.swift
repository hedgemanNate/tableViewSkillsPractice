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
    let word2 = VocabWord(word: "Ass Whooping", definition: "What happens when you are being a badass little kid")
    let word3 = VocabWord(word: "Foo", definition: "The beganning of being a fighter")
    let word4 = VocabWord(word: "Money", definition: "That thing that you don't have")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vocabWords.append(word1)
        vocabWords.append(word2)
        vocabWords.append(word3)
        vocabWords.append(word4)
    }
    
    //My Functions
    //Adds A New Word With An Alert Controller
    @IBAction func addVocabButton(_ sender: UIBarButtonItem) {
        let addVocabAlert = UIAlertController(title: "Add New Word", message: nil, preferredStyle: .alert)
        addVocabAlert.addTextField()
        addVocabAlert.addTextField()
        addVocabAlert.textFields![0].placeholder = "The Word"
        addVocabAlert.textFields![1].placeholder = "The Definition"
        addVocabAlert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (add) in
            guard let word = addVocabAlert.textFields![0].text else { return }
            guard let defintion = addVocabAlert.textFields![1].text else { return }
            self.vocabWords.append(VocabWord(word: word, definition: defintion))
            self.tableView.reloadData()
        }))
        addVocabAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (cancel) in
            addVocabAlert.dismiss(animated: true, completion: {
            })
        }))
        
        self.present(addVocabAlert, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        cell.textLabel?.text = vocabWords[indexPath.row].word
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefineSegue" {
            guard let detailedVC = segue.destination as? DefinitionViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            detailedVC.vocabWord = vocabWords[indexPath.row]
        }
        
    }
    
}
