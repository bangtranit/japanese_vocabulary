//
//  ViewController.swift
//  Japanese vocabulary
//
//  Created by Tran Thanh Bang on 6/26/18.
//  Copyright © 2018 Tran Thanh Bang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let arrayWords : [String] = VocabulariesDataSources.sharedDataSources.datasourceVocabularies()
    var arraycolors : [UIColor] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        initColorArray()
        collectionView.collectionViewLayout = CardsCollectionViewLayout()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        
        let nib: UINib = UINib(nibName: "CardCell", bundle: nil)
        
        // forCellWithReuseIdentifierには
        // "Collection Reusable View"のIdentifierで指定したものを設定
        collectionView.register(nib, forCellWithReuseIdentifier: "CardCell")
    }
    
    var colors: [UIColor]  = [
        UIColor(red: 237, green: 37, blue: 78),
        UIColor(red: 249, green: 220, blue: 92),
        UIColor(red: 194, green: 234, blue: 189),
        UIColor(red: 255, green: 184, blue: 209),
        UIColor(red: 238, green: 124, blue: 107),
        UIColor(red: 236, green: 135, blue: 14),
        UIColor(red: 249, green: 244, blue: 0),
        UIColor(red: 131, green: 199, blue: 93),
        UIColor(red: 103, green: 191, blue: 127),
        UIColor(red: 0, green: 178, blue: 191),
        UIColor(red: 66, green: 110, blue: 180),
        UIColor(red: 130, green: 115, blue: 176),
        UIColor(red: 215, green: 215, blue: 215),
    ]
    
    func initColorArray(){
        for _ in 0...arrayWords.count-1{
            let randomIndex = Int(arc4random_uniform(UInt32(colors.count-1)))
            arraycolors.append(colors[randomIndex])
        }
        print("count colors ", arraycolors.count)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCell
        cell.layer.cornerRadius = 7.0
        cell.backgroundColor = arraycolors[indexPath.row]
        cell.wordLabel.text = arrayWords[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayWords.count
    }
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red)/255 ,
                  green: CGFloat(green)/255,
                  blue: CGFloat(blue)/255,
                  alpha: 1.0)
    }
}


