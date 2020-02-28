//
//  ContactTableViewCell.swift
//  AddressBook
//
//  Created by Neethu Sukumaran on 10/28/19.
//  Copyright © 2019 Neethu Sukumaran. All rights reserved.
//

import UIKit

import UIKit

class ContactTableViewCell: UITableViewCell {
    var contact: Contact? {
        didSet {
            nameLabel?.text = contact.map({ String(describing: $0) }) ?? ""
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel?
}
