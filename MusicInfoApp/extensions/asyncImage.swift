//
//  File.swift
//  MusicInfoApp
//
//  Created by Consultant on 6/9/22.
//

import Foundation
import UIKit


extension UIImageView{
    
    func loadImgFromUrl(urlString: String){
        
//        self.autoresizingMask = UIViewAutoresizing.FlexibleBottomMargin | .FlexibleHeight | UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleWidth
        self.contentMode = UIView.ContentMode.center
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        if let data = try? Data(contentsOf: url){
            if let image = UIImage(data: data){
                
                self.image = image
//                DispatchQueue.main.async {
//                    self?.image = image
//                }
            }
        }
        
//        DispatchQueue.global().async { [weak self] in
//            if let data = try? Data(contentsOf: url){
//                if let image = UIImage(data: data){
//                    DispatchQueue.main.async {
//                        self?.image = image
//                    }
//                }
//            }
//        }
        
    }
    
}


