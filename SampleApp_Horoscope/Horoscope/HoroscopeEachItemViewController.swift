//
//  HoroscopeEachItemViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 01/02/21.
//

import UIKit

class HoroscopeEachItemViewController: UIViewController {
    
    @IBOutlet weak var eachItemView: EachItemView!
    
    var rankingString = String()
    var horoscopeImage = UIImage()
    var horoscopeName = String()
    
    let commentData = ["今日はとっても良い日！", "笑顔で今日も頑張ろう", "美味しいご飯を食べてね", "親切にした分、返ってくるよ", "少し体を動かしてみたら、気分が晴れるよ"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        eachItemView.horoscopeImageView.image = horoscopeImage
        eachItemView.horoscopeNameLabel.text = horoscopeName
        eachItemView.rankingLabel.text = "\(rankingString)位"
        eachItemView.starImageView.image = UIImage(named: showStarImages()!)
        eachItemView.commentLabel.text = commentData[showComment()!]
    }
    
    //順位に合わせて星の数を変更
    func showStarImages() -> String? {
        switch rankingString {
        case "1" :
            return "star5"
        case "2", "3", "4" :
            return "star4"
        case "5", "6", "7", "8" :
            return "star3"
        case "9", "10", "11":
            return "star2"
        case "12" :
            return "star1"
        default:
            return nil
        }
    }
    
    //順位に合わせてコメントを選択
    func showComment() -> Int? {
        switch rankingString {
        case "1" :
            return 0
        case "2", "3", "4" :
            return 1
        case "5", "6", "7", "8" :
            return 2
        case "9", "10":
            return 3
        case "11", "12" :
            return 4
        default:
            return nil
        }
    }

}
