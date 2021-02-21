//
//  RankingTableViewCell.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 18/02/21.
//

import UIKit

class RankingTableViewCell: UITableViewCell {

    @IBOutlet weak private var rankingImageView: UIImageView!
    @IBOutlet weak private var horoscopeImageView: UIImageView!
    @IBOutlet weak private var horoscopeNameLabel: UILabel!
    
    
    func setCell(ranking: Ranking) {
        self.rankingImageView.image = UIImage(named: ranking.rankingImageView)
        self.horoscopeImageView.image = UIImage(named: ranking.horoscopeImageView)
        self.horoscopeNameLabel.text = ranking.horoscopeName
    }

}
