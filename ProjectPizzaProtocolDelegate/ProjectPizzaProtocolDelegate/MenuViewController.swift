//
//  MenuViewController.swift
//  ProjectPizzaProtocolDelegate
//
//  Created by Mirian Santana on 28/03/23.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btStart(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "navigation") {
            screen.modalTransitionStyle = .flipHorizontal
            screen.modalPresentationStyle = .fullScreen
            self.present(screen, animated: true)
        }
    }
}

