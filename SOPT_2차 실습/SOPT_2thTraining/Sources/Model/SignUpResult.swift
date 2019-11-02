//
//  SignUpResult.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/11/02.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

struct SignUpResult: Codable {
    let success: Bool
    let message: String
    let data: Int?
}
