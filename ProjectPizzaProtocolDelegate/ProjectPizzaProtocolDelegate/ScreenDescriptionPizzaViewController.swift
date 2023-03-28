//
//  ScreenDescriptionPizzaViewController.swift
//  ProjectPizzaProtocolDelegate
//
//  Created by Mirian Santana on 28/03/23.
//

import UIKit
import SDWebImage

class ScreenDescriptionPizzaViewController: UIViewController {
    
    var descriptionPizza: PizzaElement?
    
    @IBOutlet weak var lblNamePizza: UILabel!
    @IBOutlet weak var lblRatingPizza: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var lblValuePizzaP: UILabel!
    @IBOutlet weak var lblValuePizzaM: UILabel!
    @IBOutlet weak var lblValuePizzaG: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        lblNamePizza.text = descriptionPizza?.name ?? ""
        lblRatingPizza.text = "\(descriptionPizza?.rating ?? 0)/5 "
        let urlImage = URL(string: descriptionPizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
        lblValuePizzaP.text = "PEQUENA - R$\(descriptionPizza?.priceP ?? 0.0)"
        lblValuePizzaM.text = "MÉDIA - R$\(descriptionPizza?.priceM ?? 0.0)"
        lblValuePizzaG.text = "GRANDE - R$\(descriptionPizza?.priceG ?? 0.0)"
    }
    
    @IBAction func btMenu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
