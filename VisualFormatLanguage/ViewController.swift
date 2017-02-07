//
//  ViewController.swift
//  VisualFormatLanguage
//
//  Created by Andrew Foster on 2/7/17.
//  Copyright © 2017 Andrii Halabuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let testBtn = UIButton()
    let selectedImage = UIImageView(image: UIImage(named: "name"))
    let topViewHolder = UIView()
    let topTitleLabel = UILabel()
    
    var views = Dictionary<String, AnyObject>()
    var constraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.green
        self.topViewHolder.backgroundColor = UIColor.white
        self.topViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(topViewHolder)
        self.views["topViewHolder"] = topViewHolder
        
        setConstraints()
    }
    
    func setConstraints() {
        
        /** Top View Holder **/
        
        addConstraints(format: "V:|-[topViewHolder(50)]")
        addConstraints(format: "H:|-0-[topViewHolder]-0-|")

        NSLayoutConstraint.activate(self.constraints)
    }
    
    func addConstraints(format: String) {
        
        let newConstraints = NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: nil, views: self.views)
        
        self.constraints += newConstraints
    }

}

