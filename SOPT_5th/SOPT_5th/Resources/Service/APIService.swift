//
//  APIService.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

struct APIService{
    
    private let baseURL = ""
    
    static let loginURL = " /auth/users/info"
    static let realTiemPostURL = "/boards/popular"
    static let schoolPoistURL = "/univ/news"
    static let hotPostURL = "/boards/hot"
    static let bestPostURL = "/boards/best/season/"
    static let postListURL = "/favorites/board"
}
