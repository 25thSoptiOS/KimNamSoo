//
//  BestKindResult.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

//{
//    "status": 200,
//    "success": true,
//    "message": "게시판 즐겨찾기성공",
//    "data": [
//        {
//        "is_like": false,
//        "board_category": "솝트대학교 맛집",
//        "board_explanation": "각자의 맛집을 소개해 주세요. 숨은 맛집이면 더욱 굿~",
//        },
//        {
//        "is_like": false,
//        "board_category": "연애 게시판",
//        "board_explanation": "애인 자랑 고민 여기서 눈치보지 말고 해요^^",
//        },
//    ]
//}

struct PostListResult: Codable{
    let status: Int
    let success: Bool
    let message: String
    let data: [PostListData]?
    
    struct PostListData: Codable {
        let isLike: Bool
        let boardCategory, boardExplanation: String
        
        enum CodingKeys: String,CodingKey{
            case isLike = "is_like"
            case boardCategory = "board_category"
            case boardExplanation = "board_explanation"
        }
    }
}
