//
//  CollectionViewCell.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 14/02/21.
//

import UIKit

class HoroscopeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak private var horoscopeImageView: UIImageView!
    @IBOutlet weak private var horoscopeNameLabel: UILabel!
    @IBOutlet weak private var horoscopeDateLabel: UILabel!
    
    
    //セルのImageView・ラベルにそれぞれイラスト・名前・日付をセット
    func setupCell(horoscopeType: HoroscopeType) {
        horoscopeImageView.image = UIImage(named: horoscopeType.name)
        horoscopeNameLabel.text = horoscopeType.name
        horoscopeDateLabel.text = horoscopeType.date

    }

}
