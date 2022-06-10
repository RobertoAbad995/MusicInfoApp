//
//  artist.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//

import Foundation

struct artist: Codable {
    
    var id: Int = -1
    var name: String = "Unknow"
    var img: String = "Unknow"
    var imgDetail: String = ""
    var genre: String = "Unknow"
    var description: String = "Unknow"
}
