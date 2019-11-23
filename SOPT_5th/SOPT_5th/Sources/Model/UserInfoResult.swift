//
//  UserInfoResult.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

//{
//    "status": 200,
//    "success": true,
//    "message": "유저 정보 성공",
//    "data": {
//        "user_name": "익명의 대학생",
//        "user_univ": "솝트대 19학번",
//        "posting_count": 21,
//        "comment_count": 21,
//        "scrap_count": 21,
//        "user_image": "https://sopt-server.s3.ap-northeast-2.amazonaws.com/1573884765891.png"
//    }
//}

struct UserInfo: Codable{
    let status: Int
    let success: Bool
    let message: String
    let data: UserData?
    
    struct UserData: Codable{
        let userName: String
        let userUniv: String
        let postingCount: Int
        let commentCount: Int
        let scrapCount: Int
        let userImage: String
        
        enum Codingkeys: String, CodingKey{
               case userName = "user_name"
               case userUniv = "user_univ"
               case postingCount = "posting_count"
               case commentCount = "comment_count"
               case scrapCount = "scrap_count"
               case userImage = "user_image"
           }
    }
}
