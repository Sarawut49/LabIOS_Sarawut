//
//  SaveFeedViewController.swift
//  SarawutChaopet
//
//  Created by std101 on 5/30/17.
//  Copyright © 2017 sarawut chaopet. All rights reserved.
//

import UIKit

class SaveFeedViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    

    var newsArray:[News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //การประกาศให้เชื่อมต่อกันกับ @IBOutlet weak var tableView: UITableView!(ตัวข้างบน) identify
        setupTableView()
        setupTableViewDummyData()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }
    
    func setupTableView(){
        self.tableView.register(UINib(nibName:"FeedTableViewCell",bundle:nil), forCellReuseIdentifier: "FeedTableViewCell")
    }
    
    func setupTableViewDummyData(){
        let news:News = News(title: "IOS", desciption: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "ประยุกต์", view: 2, createDate: "27/06/60",typeNews:"ไอที")
        let news3:News = News(title: "Android", desciption: "SuperSpeedInMyRoad", iconImage: #imageLiteral(resourceName: "rocket_icon2"), author: "ศรีสุริโย", view: 9787, createDate: "28/06/60",typeNews:"ไอที")
        let news2:News = News(title: "ฝนตกหนัก..", desciption: "กรุงเทพ น้ำรอระบาย", iconImage: #imageLiteral(resourceName: "dog"), author: "กบนอกกะลา", view: 5009, createDate: "29/06/60",typeNews:"อากาศ")
        let news5:News = News(title: "เกาหลีเหนือจ้อง..", desciption: "เอาเเน่ เกาหลีเหนือ", iconImage: #imageLiteral(resourceName: "github_512"), author: "จุ๊ๆออนทัวร์", view: 789, createDate: "30/06/60",typeNews:"ทหาร")
        let news6:News = News(title: "เอ๋ปัดตัวปลอม..", desciption: "ตำรวจสืบว่าตัวจริงคือเก๋", iconImage: #imageLiteral(resourceName: "cat"), author: "เป็ดน้อย", view: 4587, createDate: "31/06/60",typeNews:"บันเทิง")
        let news4:News = News(title: "ประยุกต์ขอลา..", desciption: "ไม่ไหวเเล้ว ทนนักข่าวไม่ไหว", iconImage: #imageLiteral(resourceName: "dog"), author: "นิรนาม", view: 9999, createDate: "1/07/60",typeNews:"การเมือง")
        let news8:News = News(title: "IOS", desciption: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "ประยุกต์", view: 2, createDate: "27/06/60",typeNews:"ไอที")
        let news10:News = News(title: "Android", desciption: "SuperSpeedInMyRoad", iconImage: #imageLiteral(resourceName: "rocket_icon2"), author: "ศรีสุริโย", view: 9787, createDate: "28/06/60",typeNews:"ไอที")
        let news7:News = News(title: "ฝนตกหนัก..", desciption: "กรุงเทพ น้ำรอระบาย", iconImage: #imageLiteral(resourceName: "dog"), author: "กบนอกกะลา", view: 5009, createDate: "29/06/60",typeNews:"อากาศ")
        let news9:News = News(title: "เกาหลีเหนือจ้อง..", desciption: "เอาเเน่ เกาหลีเหนือ", iconImage: #imageLiteral(resourceName: "github_512"), author: "จุ๊ๆออนทัวร์", view: 789, createDate: "30/06/60",typeNews:"ทหาร")
        let news12:News = News(title: "เอ๋ปัดตัวปลอม..", desciption: "ตำรวจสืบว่าตัวจริงคือเก๋", iconImage: #imageLiteral(resourceName: "cat"), author: "เป็ดน้อย", view: 4587, createDate: "31/06/60",typeNews:"บันเทิง")
        let news11:News = News(title: "ประยุกต์ขอลา..", desciption: "ไม่ไหวเเล้ว ทนนักข่าวไม่ไหว", iconImage: #imageLiteral(resourceName: "dog"), author: "นิรนาม", view: 9999, createDate: "1/07/60",typeNews:"การเมือง")
        
        //ค่าที่จะให้เเสดง
        newsArray.append(news)         //newsArray[0]
        newsArray.append(news2)       //newsArray[1]
        newsArray.append(news3)       //newsArray[2]
        newsArray.append(news4)       //newsArray[3]
        newsArray.append(news5)       //newsArray[4]
        newsArray.append(news6)       //newsArray[5]
        newsArray.append(news7)
        newsArray.append(news8)
        newsArray.append(news9)
        newsArray.append(news10)
        newsArray.append(news11)
        newsArray.append(news12)
    }
    
    
    
}
extension SaveFeedViewController: UITableViewDataSource,UITableViewDelegate{
    
    //กำหนดความสูง
    func tableView(_ tableView: UITableView, heightForRowAt indexPath:IndexPath) -> CGFloat{
        return 100  //ตัวเลขให้ตรงกับที่ตั้งในFeedTableViewCell(ขนาดรูป)
    }
    //กำหนดทั้งหมดให้เป็น 1 ก้อน
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //จำนวนเเถวที่ให้เเสดง
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    //การเชื่อมต่อกับตัวที่เลือกในที่นี้คือ FeedTableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNo = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        let news = newsArray[rowNo]
        
        cell.setupUI(news: news)// แทนค่าจาก News โดยดึงจาก Func setupUI
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //จะทำงานเมื่อมีการกด
        print(indexPath.row)    //เเสดงหมายเลนเเถวที่กด
        let rowNo = indexPath.row
        let news = newsArray[rowNo]
        self.toFeeddetailViewController(news:news)   //เชื่อมกับ function toFeeddetailViewController
    }
    
    func toFeeddetailViewController(news:News) {     //สร้าง navigationController แบบ pushViewController
        if let viewController   = self.storyboard?.instantiateViewController(withIdentifier:"FeedDetailViewController") as? FeedDetailViewController { //ดูว่ามีFeedDetailViewControllerในstoryboardไหม
            viewController.news = news  //เเทนค่าของnewsในFeedViewController ให้กับnewsในFeedDetailViewController
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }

}
