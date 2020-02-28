
//
//  Number.swift
//  AddressBook
//
//  Created by Neethu Sukumaran on 10/28/19.
//  Copyright © 2019 Neethu Sukumaran. All rights reserved.
//
class Number {
  var countryCode: String
  var numberString: String
  unowned var contact: Contact

  init?(countryCode: String, numberString: String, contact: Contact) {
    guard countryCode != "" || numberString != "" else {
      return nil
    }
    self.countryCode = countryCode
    self.numberString = numberString
    self.contact = contact
  }
}

extension Number: CustomStringConvertible {
  var description: String {
    return [countryCode, numberString].joined(separator: " ")
  }
}
