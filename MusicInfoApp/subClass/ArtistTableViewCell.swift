//
//  ArtistTableViewCell.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {
    

    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var imgArtist: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
    
    

}
