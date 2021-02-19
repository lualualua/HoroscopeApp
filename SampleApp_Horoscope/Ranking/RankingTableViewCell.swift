//
//  RankingTableViewCell.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 18/02/21.
//

import UIKit

class RankingTableViewCell: UITableViewCell {

    @IBOutlet weak var rankingImageView: UIImageView!
    @IBOutlet weak var horoscopeImageView: UIImageView!
    @IBOutlet weak var horoscopeNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(ranking: Ranking) {
        self.rankingImageView.image = UIImage(named: ranking.rankingImageView)
        self.horoscopeImageView.image = UIImage(named: ranking.horoscopeImageView)
        self.horoscopeNameLabel.text = ranking.horoscopeName
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
