//
//  MostPopularViewController.swift
//  firstUKitDesign
//
//  Created by Ghada Al on 21/01/1445 AH.
//

import Foundation
import UIKit
import SnapKit

class HealthViewController: UIView, UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
    let healhCategories: Array<String> = [
   
      "Health",
      "Exercise"
    
    ]
    var collectionView: UICollectionView = .init(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    
    init () {
        
        super.init(frame:  .zero)
        let layout = UICollectionViewFlowLayout()
           
    //        layout.collectionView.c
           //
           layout.itemSize = CGSize(width: 150, height: 50)
           layout.minimumLineSpacing = 4
           layout.minimumInteritemSpacing = 4
        
        //layout.scrollDirection = .horizontal
        collectionView = .init(frame: .zero, collectionViewLayout: layout)
           collectionView.dataSource = self
           collectionView.delegate = self
           collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.showsHorizontalScrollIndicator = false
           self.addSubview(collectionView)
           //collectionView.backgroundColor = .gray
           collectionView.snp.makeConstraints{
               $0.leading.top.trailing.bottom.equalTo(0)
             //
           }
        
        
    }
    override init(frame: CGRect) {
            super.init (frame: frame)
            
        }

    required init?(coder: NSCoder) {
           super.init (coder: coder)

    }


    }

extension HealthViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return healhCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath)
      //  indexPath.item
        let label = UILabel()
        label.text = healhCategories[indexPath.item]
        label.textAlignment = .center
       // label.backgroundColor = .gray.withAlphaComponent(0.2)
        
        cell.addSubview(label)
        
       // label.text = "hello"
        label.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalTo(cell)
        }
        cell.backgroundColor = .gray.withAlphaComponent(0.2)
        cell.layer.cornerRadius = 25
        //cell.backgroundColor = .gray
        return cell
        }
        //cell.addSubview(label)
       

    
    func numberOfSections(in collectionView: UICollectionView) -> Int{
        return 1
    }
    
}
   
    

