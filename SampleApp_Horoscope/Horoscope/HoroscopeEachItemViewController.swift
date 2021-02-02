//
//  HoroscopeEachItemViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 01/02/21.
//

import UIKit

class HoroscopeEachItemViewController: UIViewController {
    
    @IBOutlet weak var horoscopeImageView: UIImageView!
    @IBOutlet weak var rankingLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var horoscopeNameLabel: UILabel!
    
    var rankingString = String()
    var horoscopeImage = UIImage()
    var commentString = String()
    var horoscopeName = String()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        horoscopeImageView.image = horoscopeImage
        horoscopeNameLabel.text = horoscopeName

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
