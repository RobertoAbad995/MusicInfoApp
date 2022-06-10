//
//  artistDetailsViewController.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//

import UIKit

class artistDetailsViewController: UIViewController {

    @IBOutlet weak var TitleValue: UILabel!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var Genre: UILabel!
    
    var selectedArtist: artist?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TitleValue.text = selectedArtist?.name
        Genre.text = selectedArtist?.genre
        Description.text = selectedArtist?.description
        setImage()
    }
    
    func setImage(){
        let img = UIImageView()
        img.loadImgFromUrl(urlString: selectedArtist?.imgDetail ?? "")
        Image.image = img.image
    }

}
