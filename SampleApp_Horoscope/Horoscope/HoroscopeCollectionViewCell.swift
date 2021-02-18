//
//  CollectionViewCell.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 14/02/21.
//

import UIKit

class HoroscopeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var horoscopeImageView: UIImageView!
    @IBOutlet weak var horoscopeNameLabel: UILabel!
    @IBOutlet weak var horoscopeDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //セルのImageView・ラベルにそれぞれイラスト・名前・日付をセット
    func setupCell(horoscopeType: HoroscopeType) {
        horoscopeImageView.image = UIImage(named: horoscopeType.name)
        horoscopeNameLabel.text = horoscopeType.name
        horoscopeDateLabel.text = horoscopeType.date

    }

}
