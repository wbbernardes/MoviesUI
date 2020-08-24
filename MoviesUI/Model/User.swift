//
//  User.swift
//  MoviesUI
//
//  Created by Wesley Brito on 24/08/20.
//

import Foundation

struct User {
    var uid: String
    var displayName: String
    var email: String
    var phoneNumber: String
    var photoURL: URL
    
    init(uid: String, displayName: String, email: String, phoneNumber: String, photoURL: URL) {
        self.uid = uid
        self.displayName = displayName
        self.email = email
        self.phoneNumber = phoneNumber
        self.photoURL = photoURL
    }
}
