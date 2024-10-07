//
//  OrderItemCell.swift
//  OrderApp
//
//  Created by Ahmad Mohsen on 11/08/2024.
//

import UIKit

class OrderItemCell: UITableViewCell {
    var itemName: String? {
        didSet {
            if oldValue != itemName {
                setNeedsUpdateConfiguration()
            }
        }
    }
    var price: Double? {
        didSet {
            if oldValue != price {
                setNeedsUpdateConfiguration()
            }
        }
    }
    var image: UIImage? {
        didSet {
            if oldValue != image {
                setNeedsUpdateConfiguration()
            }
        }
    }

    override func updateConfiguration(using state: UICellConfigurationState) {
        var content = defaultContentConfiguration().updated(for: state)
        content.text = itemName
        content.secondaryText = price?.formatted(.currency(code: "usd"))
        content.prefersSideBySideTextAndSecondaryText = true
        content.image = image ?? UIImage(systemName: "photo.on.rectangle") // Default image
        self.contentConfiguration = content
    }
}
