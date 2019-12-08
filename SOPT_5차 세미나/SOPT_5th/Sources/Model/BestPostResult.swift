//
//  BestPostResult.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

//{
//    "status": 200,
//    "success": true,
//    "message": "Best 게시판 성공",
//    "data": [
//            {
//            "board_category" : "비밀 게시판",
//            "user_name": "익명",
//            "board_image": "https://sopt-server.s3.ap-northeast-2.amazonaws.com/1573884765891.png",
//            "board_content": "올 A+받는법...",
//            "board_like_count": 486,
//            "board_comment_count": 123,
//            "board_date": "11/11"
//            },
//            {
//            "board_category" : "비밀 게시판",
//            "user_name": "익명",
//            "board_image": "https://sopt-server.s3.ap-northeast-2.amazonaws.com/1573884765891.png",
//            "board_content": "올 A+받는법...",
//            "board_like_count": 486,
//            "board_comment_count": 123,
//            "board_date": "11/11"
//            },
//            
//    ]
//}

struct BestPostResult: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: [BestPostData]?
    
    struct BestPostData: Codable {
        let boardCategory, userName, boardImage, boardContent: String
        let boardLikeCount, boardCommentCount: Int
        let boardDate: String
        
        enum CodingKeys: String,CodingKey{
            case boardCategory = "board_category"
            case userName = "user_name"
            case boardImage = "board_image"
            case boardContent = "board_content"
            case boardLikeCount = "board_like_count"
            case boardCommentCount = "board_comment_count"
            case boardDate = "board_date"
        }
    }
}
