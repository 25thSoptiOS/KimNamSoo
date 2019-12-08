//
//  SchoolNewResult.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

//{
//    "status": 200,
//    "success": true,
//    "message": "교내 소식 성공",
//    "data": [
//        {
//        "news_title": "투표합시다!",
//        "news_content": "투표내요내요내요내요내",
//        "news_like_count": 20,
//        "news_comment_count": 45
//        },
//        {
//        "news_title": "투표합시다!",
//        "news_content": "투표내요내요내요내요내",
//        "news_like_count": 20,
//        "news_comment_count": 45
//        }
//    ]
//}

struct SchoolNewsResult: Codable{
    let status: Int
    let success: Bool
    let message: String
    let data: [NewsData]?
    
    struct NewsData: Codable{
        let newsTitle: String
        let newsContent: String
        let newsLikeCount: Int
        let newsCommentCount: Int
        
        enum Codingkeys: String, CodingKey{
            case newsTitle = "news_title"
            case newsContent = "news_content"
            case newsLikeCount = "news_like_count"
            case newsCommentCount = "news_comment_count"
        }
    }
    
}
