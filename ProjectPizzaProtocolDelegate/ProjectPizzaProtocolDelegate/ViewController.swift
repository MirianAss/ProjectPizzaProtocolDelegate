//
//  ViewController.swift
//  ProjectPizzaProtocolDelegate
//
//  Created by Mirian Santana on 28/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btStart(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "navigation") {
            self.present(screen, animated: true)
        }
    }
}

