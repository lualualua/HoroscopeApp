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
    var horoscope = String()


    override func viewDidLoad() {
        super.viewDidLoad()
        //タブのボタン画像
        tabBarController?.tabBar.items![0].image = UIImage(named: "house")
        tabBarController?.tabBar.items![1].image = UIImage(named: "unsei")
        tabBarController?.tabBar.items![2].image = UIImage(named: "crown")
        
        setDatePicker()
        setToolbar()
        
    }
    
    //datePickerの設定
    func setDatePicker() {
        //テキストフィールドをクリックしたらUIDatePickerを表示
        textField.inputView = datePicker
        // 日付のみの選択形式を設定
        datePicker.datePickerMode = .date
        datePicker.locale = Locale(identifier: "ja-JP")
        
        //wheel形式からの選択
        datePicker.preferredDatePickerStyle = .wheels
        
        // DatePickerの範囲、最大の日付を指定
        let maxDateString = "2015/01/01"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        
        //String型の日付をNSDate型へ変更
        let maxDate = dateFormatter.date(from: maxDateString)
        
        //最大日をDatePickerへ設定
        datePicker.maximumDate = maxDate
        
    }
    
    //toolbarの設定
    func setToolbar() {
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
    
    @IBAction func judgeHoroscopeButton(_ sender: Any) {
        
        //何も入力されていなかったらスルー
        if textField.text == "" {
            return
        }
        
        let dateFormatter = DateFormatter()
        //月日だけを取得
        dateFormatter.dateFormat = "MMdd"

        // DatePickerから取得した日付をString型へ変換
        let birthdayString = dateFormatter.string(from: datePicker.date)

        // String型だと0310などの表示。頭文字の0が不要のため、Int型へ変換
        let birthdayInt = Int(birthdayString)
                
        // オプショナル型のbirthdayIntをオプショナルバインディング
        if let birthdayInt = birthdayInt {
            horoscope = judgeHoroscope(withBirthday: birthdayInt)
        }
        performSegue(withIdentifier: "showResultJudgeHoroscopeVC",sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultJudgeHoroscopeViewController
        resultVC.resultString = horoscope
        resultVC.resultImage = UIImage(named: horoscope)!
    }

    //入力された誕生日から星座を判断
    func judgeHoroscope(withBirthday birthday:Int) -> String {
        switch birthday {
        case 120...218:
            return "みずがめ座"
        case 219...320:
            return "うお座"
        case 321...419:
            return "おひつじ座"
        case 420...520:
            return "おうし座"
        case 521...621:
            return "ふたご座"
        case 622...722:
            return "かに座"
        case 723...822:
            return "しし座"
        case 823...922:
            return "おとめ座"
        case 923...1023:
            return "てんびん座"
        case 1024...1122:
            return "さそり座"
        case 1123...1221:
            return "いて座"
        default:
            return "やぎ座"
        }

    }


}


