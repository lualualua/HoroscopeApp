//
//  RankingTableViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 03/02/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var rankingImage: UIImageView!
    @IBOutlet weak var horoscopeImage: UIImageView!
    @IBOutlet weak var horoscopeNameLabel: UILabel!
    
}

class RankingTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let tableData = ["おひつじ座", "おうし座", "ふたご座", "かに座", "しし座", "おとめ座", "てんびん座", "さそり座", "いて座", "やぎ座", "みずがめ座", "うお座"]
    
    let rankingImages = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //各行の高さ
        tableView.rowHeight = 50
        
    }
    
    //行の数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.horoscopeNameLabel.text = tableData[indexPath.row]
        cell.horoscopeImage.image = UIImage(named: tableData[indexPath.row])
        cell.rankingImage.image = UIImage(named: rankingImages[indexPath.row])
        return cell
    }
    
    //ヘッダーの高さをなくす（0にするとデフォルトの高さになってしまう）
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        CGFloat.leastNormalMagnitude
    }

}
