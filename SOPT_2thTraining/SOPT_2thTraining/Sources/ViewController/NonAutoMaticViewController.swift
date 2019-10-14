//
//  NonAutoMaticViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class NonAutoMaticViewController: UIViewController {

    var logoImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageGenerate()
        backgroundImageGenerate()
        
    }
    
    private func imgViewGenerate(imgName: String, imgSize: CGSize?) -> UIImageView{
        
        let imgView = UIImageView()
        imgView.image = UIImage(named: imgName)
        
        if let size = imgSize{
            imgView.bounds.size = size
        }
        
        return imgView
        
    }
    
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
    
    
    
    private func loginButtonGenerate(object: UITextField){
        let loginBt = UIButton()
        
        loginBt.setTitle("Login", for: .normal)
        loginBt.setTitleColor(UIColor.white, for: .normal)
        loginBt.layer.borderWidth = 1
        loginBt.layer.borderColor = UIColor.white.cgColor
        
        loginBt.translatesAutoresizingMaskIntoConstraints = false
        loginBt.leadingAnchor.constraint(equalToSystemSpacingAfter: object.leadingAnchor, multiplier: 1.0).isActive = true
        loginBt.trailingAnchor.constraint(equalToSystemSpacingAfter: object.trailingAnchor, multiplier: 1.0).isActive = true

    }
}
