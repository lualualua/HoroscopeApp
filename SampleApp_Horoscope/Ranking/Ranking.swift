//
//  Ranking.swift
//  SampleApp_Horoscope
//
//  Created by LylaArakawa on 18/02/21.
//

import Foundation

class Ranking: NSObject {
    var rankingImageView: String
    var horoscopeImageView: String
    var horoscopeName: String
    
    init(rankingImageView: String, horoscopeImageView: String, horoscopeName: String) {
        self.rankingImageView = rankingImageView
        self.horoscopeImageView = horoscopeImageView
        self.horoscopeName = horoscopeName
    }
}
