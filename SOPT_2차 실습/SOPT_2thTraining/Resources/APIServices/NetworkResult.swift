//
//  NetworkResult.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/11/02.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    case success(T)  //성공
    case requestErr(T)  //잘못된요청
    case pathErr  //경로에러
    case serverErr  //서버에러
    case networkFail  //통신상태에러
}
