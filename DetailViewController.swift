//
//  DetailViewController.swift
//  AddressBook
//
//  Created by Neethu Sukumaran on 10/28/19.
//  Copyright © 2019 Neethu Sukumaran. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  // Must be set before the view loads
  var contact: Contact!

  @IBOutlet weak var firstNameLabel: UILabel!
  @IBOutlet weak var lastNameLabel: UILabel!
  @IBOutlet weak var numberLabel: UILabel!
 

  override func viewDidLoad() {
    super.viewDidLoad()
    firstNameLabel.text = contact.firstName
    lastNameLabel.text = contact.lastName
    numberLabel.text = contact.number.map({ String(describing: $0) }) ?? ""
    
  }
}
