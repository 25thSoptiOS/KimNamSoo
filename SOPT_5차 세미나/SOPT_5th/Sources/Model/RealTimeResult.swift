//
//  RealTimeResult.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

struct RealTimeResult: Codable{
    let status: Int
    let success: Bool
    let message: String
    let data: [RealTimeData]?
    
    struct RealTimeData: Codable {
        let boardCategory: String
        let boardId: String
        let boardContent: String
        let boardLikeCount: Int
        let boardCommentCount: Int
        let boardDate: String
        
        enum CodingKeys: String, CodingKey {
            case boardCategory = "board_category"
            case boardId = "board_id"
            case boardContent = "board_content"
            case boardLikeCount = "board_like_count"
            case boardCommentCount = "board_comment_count"
            case boardDate = "board_date"
        }
    }
}

//{
//    "status": 200,
//    "success": true,
//    "message": "실시간 인기 글 성공",
//    "data": [
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
