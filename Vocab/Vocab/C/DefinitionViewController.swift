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

        // Do any additional setup after loading the view.
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
