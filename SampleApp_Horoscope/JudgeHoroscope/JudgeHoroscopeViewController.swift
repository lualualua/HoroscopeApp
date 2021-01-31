//
//  JudgeHoroscopeViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 30/01/21.
//

import UIKit

class JudgeHoroscopeViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    var datePicker: UIDatePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()

        // 日付のみの選択形式を設定
        datePicker.datePickerMode = .date
        datePicker.locale = Locale(identifier: "ja-JP")
        
        //wheel形式からの選択
        datePicker.preferredDatePickerStyle = .wheels
        
        //テキストフィールドをクリックしたらUIDatePickerを表示
        textField.inputView = datePicker
        
        //DatePicker（Wheel）上のDoneボタンのバーの生成
        let toolbar = UIToolbar()
        //sizeToFitで自動的にtoolBarの高さを設定
        toolbar.sizeToFit()
        
        //左側のBarButtonItemはflexibleSpace。これがないとDoneボタンが右に寄らない
        let spaceItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        //BarButtomItemの配置
        toolbar.items = [spaceItem, doneItem]
        
        //textFieldのキーボードにツールバーを設定
        textField.inputAccessoryView = toolbar
    }
    
    //UIdatePickerのDoneを押したら発火
    @objc func done() {
        
        //UIDatePickerを閉じる
        textField.endEditing(true)
        
        //日付のフォーマット
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        
        textField.text = "\(formatter.string(from: datePicker.date))"
        
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


