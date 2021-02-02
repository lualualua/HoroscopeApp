//
//  ResultJudgeHoroscopeViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 31/01/21.
//

import UIKit

class ResultJudgeHoroscopeViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultHoroscope: UILabel!
    
    var resultString = String()
    var resultImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = resultImage
        resultHoroscope.text = resultString
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
