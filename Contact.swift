//
//  Contact.swift
//  AddressBook
//
//  Created by Neethu Sukumaran on 10/28/19.
//  Copyright © 2019 Neethu Sukumaran. All rights reserved.
//

import UIKit

class Contact {
  var firstName: String
  var lastName: String
  
  var number: Number?

  init(firstName: String, lastName: String, avatar: String = "unknown") {
    self.firstName = firstName
    self.lastName = lastName
   
  }
}

extension Contact: CustomStringConvertible {
  var description: String {
    return [firstName, lastName].joined(separator: " ")
  }
}
