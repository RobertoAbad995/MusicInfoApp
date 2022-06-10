//
//  UserData.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//

import Foundation

struct Settings{
    
    let dataPath = "Data"
    var currentUserData = currentUser()
    
    mutating func loadData(){
        let tools = JsonTools()
        let jsonData = tools.readLocalFile(forName: dataPath)
        self.currentUserData = tools.parse(jsonData: jsonData)
        print("Loaded user: " + currentUserData.userName)
    }
    
}
