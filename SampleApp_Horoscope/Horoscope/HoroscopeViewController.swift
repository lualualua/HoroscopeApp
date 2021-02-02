//
//  HoroscopeViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 01/02/21.
//

import UIKit

class HoroscopeViewController: UIViewController {
    
    var horoscopeSelected = String()
    
    @IBAction func horoscopeItemsButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            horoscopeSelected = "おひつじ座"
        case 2:
            horoscopeSelected = "おうし座"
        case 3:
            horoscopeSelected = "ふたご座"
        case 4:
            horoscopeSelected = "かに座"
        case 5:
            horoscopeSelected = "しし座"
        case 6:
            horoscopeSelected = "おとめ座"
        case 7:
            horoscopeSelected = "てんびん座"
        case 8:
            horoscopeSelected = "さそり座"
        case 9:
            horoscopeSelected = "いて座"
        case 10:
            horoscopeSelected = "やぎ座"
        case 11:
            horoscopeSelected = "みずがめ座"
        case 12:
            horoscopeSelected = "うお座"
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
    }

}
