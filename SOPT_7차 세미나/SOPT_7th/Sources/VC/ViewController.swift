//
//  ViewController.swift
//  SOPT_7th
//
//  Created by 남수김 on 2019/12/07.
//  Copyright © 2019 ns. All rights reserved.
//
import FBSDKCoreKit
import FBSDKLoginKit
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let loginBtn = FBLoginButton()
        loginBtn.permissions = ["email"]
        loginBtn.center = view.center
        view.addSubview(loginBtn)
        
        getAccessToken()
        
        
        
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false){
            _ in
            print("***************************")
            print(AccessToken.current?.userID)
            
        }
        
        
        
        
    
    }
    
    
    func getAccessToken() {
        guard let token = AccessToken.current else {return}
        print("### AccessToken ####")
        print(token)
        print("### AccessToken ####")
    }
    
    
}

