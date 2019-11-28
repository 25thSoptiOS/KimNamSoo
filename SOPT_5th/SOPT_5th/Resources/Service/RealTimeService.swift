//
//  RealTimeService.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/28.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import Alamofire

class RealTimeService{
    private init() {}
    static let shared = RealTimeService()
    
    func getRealTimePostResult(completion: @escaping ([RealTimeResult.RealTimeData]?) -> Void ){
        
        let url = APIService.realTiemPostURL
        
        Alamofire.request(url).responseJSON{ response in
    
            switch response.result{
            case .success:
                guard let data = response.data else {return}
                do{
                    let decoder = JSONDecoder()
                    
                    let object = try decoder.decode(RealTimeResult.self, from: data)
                    
                    if object.status == 200{
                        print("real성공")
                        completion(object.data)
                    }else {
                        completion(object.data)
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
