//
//  HoroscopeViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 01/02/21.
//

import UIKit

enum HoroscopeType:Int {
    case first = 1, second, third, fourth, fifth, sixth, seventh, eighth, nineth, tenth, eleventh, twelveth
        
    var name: String {
        switch self {
        case .first: return "おひつじ座"
        case .second: return "おうし座"
        case .third: return "ふたご座"
        case .fourth: return "かに座"
        case .fifth: return "しし座"
        case .sixth: return "おとめ座"
        case .seventh: return "てんびん座"
        case .eighth: return "さそり座"
        case .nineth: return "いて座"
        case .tenth: return "やぎ座"
        case .eleventh: return "みずがめ座"
        case .twelveth: return "うお座"
        }
    }
        
    var rankingEnum: String {
        return String(self.rawValue)
        }
}

class HoroscopeViewController: UIViewController {
        
        var horoscopeSelected = String()
        var ranking = String()
        
        //どの星座のボタンを押されたかを判断
        @IBAction func horoscopeItemsButton(_ sender: UIButton) {
            if let type = HoroscopeType(rawValue: sender.tag) {
                horoscopeSelected = type.name
                ranking = type.rankingEnum
            
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
