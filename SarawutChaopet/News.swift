//
//  News.swift
//  SarawutChaopet
//
//  Created by std101 on 5/29/17.
//  Copyright © 2017 sarawut chaopet. All rights reserved.
//

import UIKit

class News{
    var title:String
    var desciption:String
    var iconImage:UIImage
    var author:String
    var view:Int
    var createDate:String
    var typeNews:String
    init(title:String , desciption:String , iconImage:UIImage  , author:String , view:Int , createDate:String,typeNews:String) {
        self.title = title
        self.desciption = desciption
        self.iconImage = iconImage
        self.author = author
        self.view = view
        self.createDate = createDate
        self.typeNews = typeNews
    }
}
