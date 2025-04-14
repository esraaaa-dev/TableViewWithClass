//
//  Cartoons.swift
//  CartoonBook
//
//  Created by Esra Arı on 14.04.2025.
//

import Foundation
import UIKit

class Cartoons {
    
    var img : UIImage
    var name : String
    var episode : String
    
    init(img: UIImage, name: String, episode: String) {
        self.img = img
        self.name = name
        self.episode = episode
    }
}
