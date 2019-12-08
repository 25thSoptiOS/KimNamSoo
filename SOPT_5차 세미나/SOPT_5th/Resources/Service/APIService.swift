//
//  APIService.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/23.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

struct APIService{
    
    private static let baseURL = "http://13.124.134.215:4000"
    
    static let loginURL = baseURL+"/auth/users/info"
    static let realTiemPostURL = baseURL+"/boards/popular"
    static let schoolPoistURL = baseURL+"/univ/news"
    static let hotPostURL = baseURL+"/boards/hot"
    static let bestPostURL = baseURL+"/boards/best/season/"
    static let postListURL = baseURL+"/favorites/board"
}
