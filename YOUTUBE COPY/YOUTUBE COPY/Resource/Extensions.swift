//
//  extensions.swift
//  YOUTUBE COPY
//
//  Created by Jaeseong on 2017. 11. 17..
//  Copyright © 2017년 Jaeseong. All rights reserved.
//

import UIKit
import Kingfisher

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue:CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView {
    
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String:UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary ))
    }
}

//let imageCache = NSCache<AnyObject, AnyObject>()

class CustomImageView: UIImageView {
    
//    var imageUrlString: String?
    
    func loadImageUsingUrlString(urlString: String) {
        let url = URL(string: urlString)
        self.kf.indicatorType = .activity
        self.kf.setImage(with: url, placeholder: nil, options: [.transition(.fade(1))], progressBlock: { (receive, total) in
            print("url",receive,total)
        }) { (image, error, cacheType, imageURL) in
            print("image",image ?? 0)
        }
//        imageUrlString = urlString
//        self.image = nil
//
//        if let imageFromCache = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
//            self.image = imageFromCache
//            print("imageFromCache",imageFromCache)
//            return
//        }
//
//
//        URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
//            if error != nil {
//                print(error as Any)
//                return
//            }
//
//            DispatchQueue.main.async {
//                let imageToCache = UIImage(data: data!)
//                if self.imageUrlString == urlString {
//                    print("imageToCache")
//                    self.image = imageToCache
//                }
//
//                imageCache.setObject(imageToCache!, forKey: urlString as AnyObject)
//
//            }
//        }).resume()
    }
}
