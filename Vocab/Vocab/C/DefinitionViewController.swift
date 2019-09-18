//
//  DefinitionViewController.swift
//  Vocab
//
//  Created by Nathan Hedgeman on 9/18/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    //Properties
    @IBOutlet weak var vocabLabel: UILabel!
    @IBOutlet weak var vocabTextView: UITextView!
    var vocabWord: VocabWord?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    //Functions
    func updateViews() {
        guard let vocabWord = vocabWord else { return NSLog("Error: No Vocab Word Passed By Segue") }
        vocabLabel.text = vocabWord.word
        vocabTextView.text = vocabWord.definition
    }

}
