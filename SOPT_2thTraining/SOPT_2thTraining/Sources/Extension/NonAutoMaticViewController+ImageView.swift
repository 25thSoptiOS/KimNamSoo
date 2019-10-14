//
//  NonAutoMaticViewController+MainUI.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import UIKit

extension NonAutoMaticViewController{
    
    //MARK: 이미지 팩토리
    private func imgViewGenerate(imgName: String, imgSize: CGSize?) -> UIImageView{
        
        let imgView = UIImageView()
        imgView.image = UIImage(named: imgName)
        
        if let size = imgSize{
            imgView.bounds.size = size
        }
        
        return imgView
        
    }
    
    //MARK: 로고이미지
    private func logoImageGenerate(){
        
        /*
        logoImg = UIImageView()
        logoImg.image = UIImage(named: "logoIEumLogin")
        logoImg.bounds.size = CGSize(width: 61, height: 61)
        */
        
        logoImg = imgViewGenerate(imgName: "logoIEumLogin", imgSize: CGSize(width: 61, height: 61))
        self.view.addSubview(logoImg)
        
        logoImg.translatesAutoresizingMaskIntoConstraints = false
        logoImg.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoImg.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 58).isActive = true
        
    }
    
    //MARK: 배경이미지
    private func backgroundImageGenerate(){
        /*
        let backImg = UIImageView()
        backImg.image = UIImage(named: "bgImage")
        */
        
        let backImg = imgViewGenerate(imgName: "bgImage", imgSize: nil)
        self.view.addSubview(backImg)
        
        backImg.translatesAutoresizingMaskIntoConstraints = false
        backImg.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor).isActive = true
        backImg.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
        backImg.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        backImg.topAnchor.constraint(equalTo: logoImg.bottomAnchor, constant: 35).isActive = true
        
     }
    
}
