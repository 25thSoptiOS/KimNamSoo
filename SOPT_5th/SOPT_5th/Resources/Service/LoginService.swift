//
//  LoginService.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import Alamofire

class LoginService{
    private init() {}
    static let shared = LoginService()
    
    func getLoginResult(completion: @escaping (UserInfo) -> Void ){
        
        let url = APIService.loginURL
        
        Alamofire.request(url).responseJSON{ response in
    
            switch response.result{
            case .success:
                guard let data = response.data else {return}
                do{
                    let decoder = JSONDecoder()
                    
                    let object = try decoder.decode(UserInfo.self, from: data)
                    
                    if object.status == 200{
                        print("성공")
                        completion(object)
                    }else {
                        completion(object)
                    }
                    
                }catch(let err){
                    print("err")
                    print(err.localizedDescription)
                }
                
            case .failure:
                print("alamor err")
                
            }
        }
        
    }
}
