//
//  ViewController.swift
//  UIKitAsyncAwaitSample
//
//  Created by Timothy Miller on 6/9/21.
//

import UIKit

class ViewController: UIViewController {

    let workQueue = DispatchQueue(label: "WorkQueue")
    
    private let longRunning = LongRunning()
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doWorkTapped(_ sender: Any) {
        async {
            let result = await longRunning.execute()
            resultLabel.text = String(result)
        }
    }
    
}

