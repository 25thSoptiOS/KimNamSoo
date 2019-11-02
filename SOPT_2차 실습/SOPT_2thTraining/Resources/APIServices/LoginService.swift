//
//  LoginService.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/11/02.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import Alamofire  //4.8.2

class LoginService{
    private init() {}
    
    static let shared = LoginService()
    
    func getLoginResult(id: String, pw: String, completion: @escaping(NetworkResult<Any>) -> Void ){
        
        let header: HTTPHeaders = [
            "Content-Type" : "application/json"
        ]/* 유저(User) */
        
        let body: Parameters = [
            "id" : id,
            "pwd" : pw
        ]
        
        //response.request = url주소
        //response.response = 응답그대로 (디코딩 전)
        //response.data = byte 크기
        //response.result = 성공/실패 여부
        Alamofire.request(APIConstants.LoginURL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseJSON {
        response in
            
            // parameter 위치
            switch response.result {
                
            // 통신 성공 - 네트워크 연결
            case .success:
                
//                response.data
                if let value = response.result.value {
                    if let status = response.response?.statusCode {
                        switch status {
                        case 200:
                            do {
                                let decoder = JSONDecoder()
                                print("value", value)
                                
                                //json값
                                let result: LoginResult = try decoder.decode(LoginResult.self, from: value as! Data)
                                
                                // ResponseString에 있는 success로 분기 처리
                                switch result.success {
                                    
                                case true:
                                    print("success")
                                    completion(.success(result.data))
                                case false:
                                    completion(.requestErr(result.message))
                                }
                            }
                            catch {
                                completion(.pathErr)
                                print(error.localizedDescription)
                                print(APIConstants.LoginURL)
                            }
                        case 400:
                            completion(.pathErr)
                        case 500:
                            completion(.serverErr)
                        default:
                            break
                        }// switch
                    }// if let
                }
                
            // 통신 실패 - 네트워크 연결
            case .failure(let err):
                print(err.localizedDescription)
                completion(.networkFail)
                // .networkFail이라는 반환 값이 넘어감
                break
            } // response.result switch
        } // alamofire.request
    } // func login
} // struct


