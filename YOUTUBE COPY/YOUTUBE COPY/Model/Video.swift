//
//  Video.swift
//  YOUTUBE COPY
//
//  Created by Jaeseong on 2017. 11. 18..
//  Copyright © 2017년 Jaeseong. All rights reserved.
//

import UIKit

class Video: NSObject {
    
    var thumbnailImageName: String?
    var title: String?
    var numberOfViews: NSNumber?
    var uploadDate: Date?
    
    var channel: Channel?
}

class Channel: NSObject {
    
    var name: String?
    var profileImageName: String?
    
}
