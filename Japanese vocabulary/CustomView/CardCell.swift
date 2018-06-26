//
//  CardCell.swift
//  Japanese vocabulary
//
//  Created by Tran Thanh Bang on 6/26/18.
//  Copyright © 2018 Tran Thanh Bang. All rights reserved.
//

import UIKit

class CardCell: UICollectionViewCell {

    @IBOutlet weak var wordLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.xibViewSet()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)!
//        self.xibViewSet()
//    }
//
//    internal func xibViewSet() {
//        if let view = Bundle.main.loadNibNamed("CardCell", owner: self, options: nil)?.first as? UIView {
//            view.frame = self.bounds
//            self.addSubview(view)
//        }
//    }


}
