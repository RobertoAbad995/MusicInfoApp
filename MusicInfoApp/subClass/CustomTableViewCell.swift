//
//  CustomTableViewCell.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/10/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var imgArtist: UIImageView!
    
    var selectedArtist = artist()

    override func awakeFromNib() {
        super.awakeFromNib()
        lblArtist.text = selectedArtist.name
        lblGenre.text = selectedArtist.genre
        setImage(url: selectedArtist.img)
    }
    
    func setImage(url : String){
        
        let img = UIImageView()
        img.loadImgFromUrl(urlString: url)
        
        if let completeImg = img.image {
            imgArtist.image = completeImg
        }
        else{
            print("imagen cargando ...")
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
