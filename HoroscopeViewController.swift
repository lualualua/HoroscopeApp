//
//  HoroscopeViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 01/02/21.
//

import UIKit

enum HoroscopeType:Int {
        case first = 1, second, third, fourth, fifth, sixth, seventh, eighth, nineth, tenth, eleventh, twelveth
    }

class HoroscopeViewController: UIViewController {
        
        var horoscopeSelected = String()
        var ranking = String()
        
        //どの星座のボタンを押されたかを判断
        @IBAction func horoscopeItemsButton(_ sender: UIButton) {
            if let type = HoroscopeType(rawValue: sender.tag) {
            switch type {
            case .first:
                horoscopeSelected = "おひつじ座"
                ranking = "1"
            case .second:
                horoscopeSelected = "おうし座"
                ranking = "2"
            case .third:
                horoscopeSelected = "ふたご座"
                ranking = "3"
            case .fourth:
                horoscopeSelected = "かに座"
                ranking = "4"
            case .fifth:
                horoscopeSelected = "しし座"
                ranking = "5"
            case .sixth:
                horoscopeSelected = "おとめ座"
                ranking = "6"
            case .seventh:
                horoscopeSelected = "てんびん座"
                ranking = "7"
            case .eighth:
                horoscopeSelected = "さそり座"
                ranking = "8"
            case .nineth:
                horoscopeSelected = "いて座"
                ranking = "9"
            case .tenth:
                horoscopeSelected = "やぎ座"
                ranking = "10"
            case .eleventh:
                horoscopeSelected = "みずがめ座"
                ranking = "11"
            case .twelveth:
                horoscopeSelected = "うお座"
                ranking = "12"

            }
        }
        performSegue(withIdentifier: "showEachItemVC", sender: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let eachItemVC = segue.destination as! HoroscopeEachItemViewController
        eachItemVC.horoscopeImage = UIImage(named: horoscopeSelected)!
        eachItemVC.horoscopeName = horoscopeSelected
        eachItemVC.rankingString = ranking
    }

}
