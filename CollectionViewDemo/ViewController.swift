//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by duc anh on 2/20/19.
//  Copyright © 2019 duc anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myScrollView: UIScrollView!
    
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.delegate = self
        if data != nil {
            myImage.image = UIImage(named: data!)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.myImage
    }
    
}

