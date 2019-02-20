//
//  CollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by duc anh on 2/20/19.
//  Copyright © 2019 duc anh. All rights reserved.
//

import UIKit

protocol CollectionViewCellDelegate: class {
    func onClick(at indexPath: IndexPath)
}

class CollectionViewCell: UICollectionViewCell {
    
    weak var delegate: CollectionViewCellDelegate?
    var indexPath: IndexPath!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func clickDelete(_ sender: UIButton) {
        if indexPath != nil {
            delegate?.onClick(at: indexPath)
        }
    }
}
