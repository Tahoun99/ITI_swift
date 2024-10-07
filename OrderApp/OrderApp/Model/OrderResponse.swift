//
//  OrderResponse.swift
//  OrderApp
//
//  Created by Ahmad Mohsen on 10/08/2024.
//

import Foundation

struct OrderResponse: Codable{
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey{
        case prepTime = "preparation_time"
    }
}
