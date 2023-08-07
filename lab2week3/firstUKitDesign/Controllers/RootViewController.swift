//
//  RootViewController.swift
//  firstUKitDesign
//
//  Created by Ghada Al on 20/01/1445 AH.
// copy

import Foundation
import UIKit
import SnapKit

class RootViewController:  UIViewController {
    
    let mostPopular: MostPopularViewController = .init()
    let lifeStyle: LifeStyleViewController = .init()
    let health: HealthViewController = .init()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
       configurePopularBar()
        configurelifeStyle()
        configurehealth()
        self.title = "Personalized Your Feed"
        
      
       
    }
    

       
        
    
    func configurePopularBar() {
        self.view.addSubview(mostPopular)
        mostPopular.snp.makeConstraints {
           // $0.top.equalTo(mostPopular.snp.bottom)
            $0.width.equalTo(self.view.frame.width-32)
            $0.height.equalTo(600+16)
            $0.leading.equalTo(16)
        }
        
    }
    
    func configurelifeStyle() {
        self.view.addSubview(lifeStyle)
        lifeStyle.snp.makeConstraints {
            $0.top.equalTo(mostPopular.snp.bottom)
            $0.width.equalTo(self.view.frame.width-32)
            $0.height.equalTo(500+66)
            $0.leading.equalTo(16)
        }
        
    }
    func configurehealth() {
        self.view.addSubview(health)
        health.snp.makeConstraints {
            $0.top.equalTo(lifeStyle.snp.bottom)
            $0.width.equalTo(self.view.frame.width-32)
            $0.height.equalTo(500+66)
            $0.leading.equalTo(16)
        }
        
    }
}


    
 
