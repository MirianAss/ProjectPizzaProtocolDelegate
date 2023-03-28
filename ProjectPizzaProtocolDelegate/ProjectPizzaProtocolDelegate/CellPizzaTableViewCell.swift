//
//  CellPizzaTableViewCell.swift
//  ProjectPizzaProtocolDelegate
//
//  Created by Mirian Santana on 28/03/23.
//

import UIKit
import SDWebImage

class CellPizzaTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePizzaCell: UIImageView!
    @IBOutlet weak var lblPizzaCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupPizza(pizza: PizzaElement?) {
        lblPizzaCell.text = pizza?.name ?? ""
        let urlImage = URL(string: pizza?.imageURL ?? "")
        imagePizzaCell.sd_setImage(with: urlImage)
            
    }
    
}
