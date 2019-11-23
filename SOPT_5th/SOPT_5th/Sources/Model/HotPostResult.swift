//
//  HotPostResult.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

//{
//    "status": 200,
//    "success": true,
//    "message": "HOT 게시판 정보 성공",
//   "data": [
//        {
//        "board_category": "비밀게시판",
//        "board_id": "솝트대 19학번",
//        "board_content": "하.. 종강 도대체 언제 하나요?? 얼른 종강해서 푹 쉬고 싶네요.",
//        "board_like_count": 20,
//        "board_comment_count": 45,
//        "board_date": "11/11"
//        },
//    ]
//}

struct HotPostResult: Codable{
    let status: Int
    let success: Bool
    let message: String
    let data: [HotPostData]?
    
    struct HotPostData: Codable{
        let boardCategory, boardId, boardContent: String
        let boardListCount, boardCommentCount: Int
        let boardDate: String
        
        enum CodingKeys: String,CodingKey {
            case boardCategory = "board_category"
            case boardId = "board_id"
            case boardContent = "board_content"
            case boardListCount = "board_like_count"
            case boardCommentCount = "board_comment_count"
            case boardDate = "board_date"
            
        }
    }
}
