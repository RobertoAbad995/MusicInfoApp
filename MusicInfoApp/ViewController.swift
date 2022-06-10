//
//  ViewController.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    var settings: Settings = Settings()
    var user: currentUser = currentUser()
    @IBOutlet weak var lblHello: UILabel!
    
    override func viewDidLoad() {
        settings.loadData()
        user = settings.currentUserData
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initView()
    }

    func initView(){
        lblHello.text = "Welcome \(user.userName)!"
    }
    
}

