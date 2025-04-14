//
//  detailsVC.swift
//  CartoonBook
//
//  Created by Esra Arı on 14.04.2025.
//

import UIKit

class detailsVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    var selectedCartoon :Cartoons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedCartoon?.name
        yearLabel.text = selectedCartoon?.episode
        imageView.image = selectedCartoon?.img

    }
    



}
