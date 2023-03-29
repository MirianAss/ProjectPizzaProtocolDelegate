//
//  Request.swift
//  ProjectPizzaProtocolDelegate
//
//  Created by Mirian Santana on 28/03/23.
//

import UIKit
import Alamofire

protocol RequestDelegate: NSObject {
    
    func finishRequest(arrayDePizza: Pizza?)
}

class Request: NSObject {
    
    var arrayPizza: Pizza?
    
    weak var delegate: RequestDelegate?
    
    func requestPizza(completion: @escaping (Pizza?) -> Void) {
        
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza").response { response in
            
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            
            self.arrayPizza = pizza
            completion(pizza)
            self.delegate?.finishRequest(arrayDePizza: pizza)
        }
    }
}
