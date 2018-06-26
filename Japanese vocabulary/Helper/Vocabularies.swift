//
//  Vocabularies.swift
//  Japanese vocabulary
//
//  Created by Tran Thanh Bang on 6/26/18.
//  Copyright © 2018 Tran Thanh Bang. All rights reserved.
//

import Foundation

class VocabulariesDataSources: NSObject {
    private static let sharedInstance = VocabulariesDataSources()
    class var sharedDataSources : VocabulariesDataSources{
        return sharedInstance
    }
    
    func datasourceVocabularies() -> [String]{
        let vocabularies = ["青春","晩年","葬式","世帯","世間","庶民","おんぶする","片言","夜更かし","家で","戸締り","ずぶ濡れ","顔つき","身なり","身の回り","身振り","良心","素質","好意","ため息","ど忘れ","用心","予感","視線","迷信","縁","使い捨て","下取り","倹約","出費","会計","所得","採用","雇用","所属","待遇","派遣","不妊","地元","現役","操縦","主食","食物","穀物","豊作","例年","種","とげ","毒","くじ","桁","単位","一括","塊・固まり","丈","欄","隅","縁","ひび","分裂","振動","沸騰","循環","回収","獲得","区間","施設","運営","返却","投書","検索","負傷","感染","作用","依存","解消","促進","意向","意図","向上","活気","迫力","勝利","適応","調和","権力","権威","圧迫","強制","規制","拒否","対抗","抗議","革新","原則","経過","中継","規模"]
        return vocabularies
    }
}
