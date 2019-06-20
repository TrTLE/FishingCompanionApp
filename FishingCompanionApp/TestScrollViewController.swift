//
//  TestScrollViewController.swift
//  FishingCompanionApp
//
//  Created by Admin on 20/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

// UIImage extension to create a new, solid-color image
public extension UIImage {
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}

class TestScrollViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a UIScrollView
        let scrollView = UIScrollView()
        
        // we will set the auto-layout constraints
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        // set background color so we can see the scrollView when the images are scrolled
        scrollView.backgroundColor = .orange
        
        // add the scrollView to the view
        view.addSubview(scrollView)
        
        // pin scrollView 20-pts from top/bottom/leading/trailing
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20.0).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20.0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20.0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20.0).isActive = true
        
        // create an array of empty images in case this is run without
        // valid images in the resources
        var imgArray = [UIImage(color: .blue), UIImage(color: .green)]
        
        // if these images exist, load them and replace the blank images in imgArray
        if  let img1: UIImage = UIImage(named: "image1"),
            let img2: UIImage = UIImage(named: "image2") {
            
            imgArray = [img1, img2]
            
        }
        
        // create a UIStackView
        let stackView = UIStackView()
        
        // we can use the default stackView properties
        // but can change axis, alignment, distribution, spacing, etc if desired
        
        // we will set the auto-layout constraints
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // add the stackView to the scrollView
        scrollView.addSubview(stackView)
        
        // with auto-layout, scroll views use the content's constraints to
        // determine the contentSize,
        // so pin the stackView to top/bottom/leading/trailing of the scrollView
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0.0).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0.0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0.0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0.0).isActive = true
        
        // loop through the images
        for img in imgArray {
            
            // create a new UIImageView
            let imgView = UIImageView(image: img)
            
            // we will set the auto-layout constraints, and allow the stackView
            // to handle the placement
            imgView.translatesAutoresizingMaskIntoConstraints = false
            
            // set image scaling as desired
            imgView.contentMode = .scaleToFill
            
            // add the image view to the stackView
            stackView.addArrangedSubview(imgView)
            
            // set imgView's width and height to the scrollView's width and height
            imgView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1.0).isActive = true
            imgView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 1.0).isActive = true
            
        }
        
    }
    
}
