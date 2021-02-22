//
//  HoroscopeViewController.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 01/02/21.
//

import UIKit

class HoroscopeViewController: UIViewController {
    
    
        @IBOutlet weak var collectionView: UICollectionView!
    //collectionViewCell間のpaddingとmargin
        let padding: CGFloat = 8.0
        let margin: CGFloat = 20
    
        var horoscopeSelected = String()
        var ranking = String()


    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "HoroscopeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
    }
    
    //Segue準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let eachItemVC = segue.destination as! HoroscopeEachItemViewController
        eachItemVC.horoscopeImage = UIImage(named: horoscopeSelected)!
        eachItemVC.horoscopeName = horoscopeSelected
        eachItemVC.rankingString = ranking
    }
}

    //collectionView
extension HoroscopeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        HoroscopeType.allCases.count
    }
    
    //indexPath.rowに合わせてModelから情報を引っ張ってきて、各セルにそれぞれイラスト・星座名・日付期間を配置
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"CustomCell",for:indexPath) as! HoroscopeCollectionViewCell
        //enumのrawvalueは1から設定しているため、indexPath.rowに1を追加
        if let horoscopetype = HoroscopeType(rawValue: indexPath.row+1) {
            cell.setupCell(horoscopeType: horoscopetype)
        }
        
        return cell
    }
}


extension HoroscopeViewController: UICollectionViewDelegateFlowLayout {
    
    //セルの大きさを計算。画面サイズに合わせて大小変化する
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (collectionView.frame.size.width - margin*2 - padding*2) / 3
        let height = width

        return CGSize(width: width, height: height)
    }
    
    //縦4列のCollectionViewが上下中央に配置されるよう、画面サイズに合わせてmarginを計算
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let collectionViewHeight = self.collectionView?.frame.height

        let width: CGFloat = (collectionView.frame.size.width - margin*2 - padding*2) / 3
        let height = Int(width)
        
        let cellSpacing = Int(padding)
        let cellCount = 4
        let totalCellHeight = height * cellCount
        let totalSpacingHeight = cellSpacing * (cellCount - 1)

        let inset = (collectionViewHeight! - CGFloat(totalCellHeight + totalSpacingHeight)) / 2
        return UIEdgeInsets(top: inset, left: margin, bottom: inset, right: margin)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
     return padding
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
     return padding
    }
}

extension HoroscopeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //どの星座のボタンを押されたかを判断
        if let horoscopetype = HoroscopeType(rawValue: indexPath.row+1) {
            horoscopeSelected = horoscopetype.name
            ranking = horoscopetype.rankingEnum
        }
        performSegue(withIdentifier: "showEachItemVC", sender: nil)
    }
}
