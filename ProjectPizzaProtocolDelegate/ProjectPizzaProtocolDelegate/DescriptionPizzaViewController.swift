//
//  DescriptionPizzaViewController.swift
//  ProjectPizzaProtocolDelegate
//
//  Created by Mirian Santana on 28/03/23.
//

import UIKit
import SDWebImage

class DescriptionPizzaViewController: UIViewController {
    
    var descriptionPizza: PizzaElement?
    
    @IBOutlet weak var lblNamePizza: UILabel!
    @IBOutlet weak var lblRatingPizza: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var lblValuePizzaP: UILabel!
    @IBOutlet weak var lblValuePizzaM: UILabel!
    @IBOutlet weak var lblValuePizzaG: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
    }
    
    func setupScreen() {
        setupNamePizza()
        setupRatingPizza()
        setupImagePizza()
        setupValuePizzaP()
        setupValuePizzaM()
        setupValuePizzaG()
    }
    
    func setupNamePizza() {
        lblNamePizza.text = descriptionPizza?.name ?? ""
    }
    
    func setupRatingPizza() {
        lblRatingPizza.text = "\(descriptionPizza?.rating ?? 0)/5 "
    }
    
    func setupImagePizza() {
        let urlImage = URL(string: descriptionPizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
    }
    
    func setupValuePizzaP() {
        lblValuePizzaP.text = "PEQUENA - R$\(descriptionPizza?.priceP ?? 0.0)"
    }
    
    func setupValuePizzaM() {
        lblValuePizzaM.text = "MÉDIA - R$\(descriptionPizza?.priceM ?? 0.0)"
    }
    
    func setupValuePizzaG() {
        lblValuePizzaG.text = "GRANDE - R$\(descriptionPizza?.priceG ?? 0.0)"
    }
    
    @IBAction func btMenu(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
