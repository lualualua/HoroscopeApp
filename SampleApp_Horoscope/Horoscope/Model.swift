//
//  Model.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 16/02/21.
//

import Foundation

enum HoroscopeType:Int, CaseIterable {
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
    
    var date: String {
        switch self {
        case .first: return "3/21~4/19"
        case .second: return "4/20~5/20"
        case .third: return "5/21~6/21"
        case .fourth: return "6/22~7/22"
        case .fifth: return "7/23~8/22"
        case .sixth: return "8/23~9/22"
        case .seventh: return "9/23~10/23"
        case .eighth: return "10/24~11/21"
        case .nineth: return "11/22~12/21"
        case .tenth: return "12/22~1/19"
        case .eleventh: return "1/20~2/18"
        case .twelveth: return "2/19~3/20"
        }
    }
}
