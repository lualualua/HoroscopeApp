//
//  HoroscopeViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 01/02/21.
//

import UIKit

class HoroscopeViewController: UIViewController {
    
    var horoscopeSelected = String()
    var ranking = String()
    
    //どの星座のボタンを押されたかを判断
    @IBAction func horoscopeItemsButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            horoscopeSelected = "おひつじ座"
            ranking = "1"
        case 2:
            horoscopeSelected = "おうし座"
            ranking = "2"
        case 3:
            horoscopeSelected = "ふたご座"
            ranking = "3"
        case 4:
            horoscopeSelected = "かに座"
            ranking = "4"
        case 5:
            horoscopeSelected = "しし座"
            ranking = "5"
        case 6:
            horoscopeSelected = "おとめ座"
            ranking = "6"
        case 7:
            horoscopeSelected = "てんびん座"
            ranking = "7"
        case 8:
            horoscopeSelected = "さそり座"
            ranking = "8"
        case 9:
            horoscopeSelected = "いて座"
            ranking = "9"
        case 10:
            horoscopeSelected = "やぎ座"
            ranking = "10"
        case 11:
            horoscopeSelected = "みずがめ座"
            ranking = "11"
        case 12:
            horoscopeSelected = "うお座"
            ranking = "12"
        default:
            break
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
