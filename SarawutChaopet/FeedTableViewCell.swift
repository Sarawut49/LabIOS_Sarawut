//
//  FeedTableViewCell.swift
//  SarawutChaopet
//
//  Created by std101 on 5/29/17.
//  Copyright © 2017 sarawut chaopet. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var iconimgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var desciptionLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!    
    @IBOutlet weak var typeNewsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupUI(news: News){
        self.iconimgView.image = news.iconImage    //บรรทัดนี้จะเเทนค่ารูปเดิม ด้วยรูปที่สร้างมาจาก Model ใน class news
        self.titleLabel.text = news.title          //บรรทัดนี้จะเเทนค่าtitle ด้วยค่าที่สร้างมาจาก Model ใน class news
        self.desciptionLabel.text = news.desciption        //บรรทัดนี้จะเเทนค่ารายละเอียด ด้วยค่าที่สร้างมาจาก Model ใน class news
        self.accessoryLabel.text = "\(news.author) ・ \(news.view) ・ \(news.createDate)"      //บรรทัดนี้จะเเทนค่ารายละเอียดสุดท้าย ด้วยค่าที่สร้างมาจาก Model ใน class news
        self.typeNewsLabel.text = news.typeNews
        
    }
    
}
