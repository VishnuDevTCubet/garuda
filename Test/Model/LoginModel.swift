//
//  LoginModel.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import Foundation


//["data": {
//    "access_token" = 9jfLPdFPP2USNkDXTLNuqfIHYNAqFyc90sJQMPq4YmjRd5lRdlBb0BmpRQGqYd0ICA53eyAk6IoEtzo1;
//    "token_type" = Bearer;
//}, "message": User Logged in]

class LoginModel : Codable {
    var data :UserData?
    var message : String?
    enum CodingKeys: String, CodingKey {
    case data
    case message
    }
}

class UserData : Codable {
    var access_token : String?
    var token_type : String?
    enum CodingKeys: String, CodingKey {
        case access_token
        case token_type
    }
}
