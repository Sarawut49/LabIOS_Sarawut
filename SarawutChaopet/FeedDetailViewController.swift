//
//  FeedDetailViewController.swift
//  SarawutChaopet
//
//  Created by std101 on 5/30/17.
//  Copyright © 2017 sarawut chaopet. All rights reserved.
//

import UIKit

class FeedDetailViewController: UIViewController {
    
    @IBOutlet weak var headerimg: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!

    var news:News?
    

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.news = News(title: "IOS", desciption: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "ประยุกต์", view: 2, createDate: "27/06/60",typeNews:"ไอที")
        self.setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    @IBAction func onClickSaveButton(_ sender: Any) {
        print("คุณได้คลิ๊กปุ๋มเเล้วอ่ะดิ")
    }
    

    func setupUI(){
        
        self.headerimg.image = self.news?.iconImage
        self.titleLabel.text = self.news?.title
        self.detailTextView.text = self.news?.desciption
        self.accessoryLabel.text = "\(self.news?.author)・\(self.news?.view)・\(self.news?.createDate)"

    }
}
