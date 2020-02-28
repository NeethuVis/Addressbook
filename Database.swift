//
//  Database.swift
//  AddressBook
//
//  Created by Neethu Sukumaran on 10/28/19.
//  Copyright © 2019 Neethu Sukumaran. All rights reserved.
//
// A simple application storage class for our app.
class Database {
  static var sharedInstance = Database()
  lazy var contacts: [Contact] =
    [("Neethu", "Sukumaran", "0032", "654321"),
     ("Neethu", "S", "0052", "123456"),]
        .map { (firstName, lastName, countryCode, numberString) -> Contact in

      let contact = Contact(firstName: firstName, lastName: lastName)
      let number = Number(countryCode: countryCode, numberString: numberString, contact: contact)

      contact.number = number
      return contact
    }

  private init() {}
}
