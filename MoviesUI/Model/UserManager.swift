//
//  UserManager.swift
//  MoviesUI
//
//  Created by Wesley Brito on 24/08/20.
//

import Foundation

struct UserManager {
    let user: User = User(uid: "", displayName: "", email: "", phoneNumber: "", photoURL: URL(string: "")!)

    static var shared = UserManager()

    private init() {}

}
