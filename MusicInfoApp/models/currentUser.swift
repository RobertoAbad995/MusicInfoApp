//
//  UserData.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//

import Foundation

struct currentUser: Codable {
    
    var userName: String = ""
    var artistList = [artist]()
    var userTopFive = [artist]()
}
