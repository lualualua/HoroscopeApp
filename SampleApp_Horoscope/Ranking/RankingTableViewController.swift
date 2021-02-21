//
//  RankingTableViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 03/02/21.
//

import UIKit

class RankingTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let rankingImages = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    let horoscopeNames = ["おひつじ座", "おうし座", "ふたご座", "かに座", "しし座", "おとめ座", "てんびん座", "さそり座", "いて座", "やぎ座", "みずがめ座", "うお座"]
    
    var rankings = [Ranking]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "RankingTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableviewCell")
        
        //星座の数だけrankingsのArrayにデータを追加していく
        for i in 0..<horoscopeNames.count {
            rankings.append(Ranking(rankingImageView: rankingImages[i], horoscopeImageView: horoscopeNames[i], horoscopeName: horoscopeNames[i]))
        }
        self.tableView.reloadData()
        
    }
    
    //行の数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        rankings.count
    }
    
    //行のindexPath.rowごとに画像データ・星座名等をセット
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableviewCell", for: indexPath) as! RankingTableViewCell
        cell.setCell(ranking: rankings[indexPath.row])
        return cell
    }
    
    //ヘッダーの高さをなくす（0にするとデフォルトの高さになってしまう）
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        CGFloat.leastNormalMagnitude
    }
    
    //行の高さ
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
