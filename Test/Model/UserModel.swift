//
//  UserModel.swift
//  Test
//
//  Created by Vishnu Dev on 06/10/22.
//

import Foundation
import Foundation

struct Datas : Codable {
    let id : Int?
    let first_name : String?
    let last_name : String?
    let join_date : String?
    let date_of_birth : String?
    let designation_id : Int?
    let gender : String?
    let mobile : Int?
    let landline : Int?
    let email : String?
    let present_address : String?
    let permanent_address : String?
    let profile_picture : String?
    let resume : String?
    let created_at : String?
    let updated_at : String?
    let status : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case first_name = "first_name"
        case last_name = "last_name"
        case join_date = "join_date"
        case date_of_birth = "date_of_birth"
        case designation_id = "designation_id"
        case gender = "gender"
        case mobile = "mobile"
        case landline = "landline"
        case email = "email"
        case present_address = "present_address"
        case permanent_address = "permanent_address"
        case profile_picture = "profile_picture"
        case resume = "resume"
        case created_at = "created_at"
        case updated_at = "updated_at"
        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        first_name = try values.decodeIfPresent(String.self, forKey: .first_name)
        last_name = try values.decodeIfPresent(String.self, forKey: .last_name)
        join_date = try values.decodeIfPresent(String.self, forKey: .join_date)
        date_of_birth = try values.decodeIfPresent(String.self, forKey: .date_of_birth)
        designation_id = try values.decodeIfPresent(Int.self, forKey: .designation_id)
        gender = try values.decodeIfPresent(String.self, forKey: .gender)
        mobile = try values.decodeIfPresent(Int.self, forKey: .mobile)
        landline = try values.decodeIfPresent(Int.self, forKey: .landline)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        present_address = try values.decodeIfPresent(String.self, forKey: .present_address)
        permanent_address = try values.decodeIfPresent(String.self, forKey: .permanent_address)
        profile_picture = try values.decodeIfPresent(String.self, forKey: .profile_picture)
        resume = try values.decodeIfPresent(String.self, forKey: .resume)
        created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
        updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
        status = try values.decodeIfPresent(String.self, forKey: .status)
    }

}
struct Links : Codable {
    let url : String?
    let label : String?
    let active : Bool?

    enum CodingKeys: String, CodingKey {

        case url = "url"
        case label = "label"
        case active = "active"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        active = try values.decodeIfPresent(Bool.self, forKey: .active)
    }

}
struct UserModel : Codable {
    let data : Data?

    enum CodingKeys: String, CodingKey {

        case data = "data"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(Data.self, forKey: .data)
    }

}

import Foundation
struct Data : Codable {
    let current_page : Int?
    let datas : [Datas]?
    let first_page_url : String?
    let from : Int?
    let last_page : Int?
    let last_page_url : String?
    let links : [Links]?
    let next_page_url : String?
    let path : String?
    let per_page : Int?
    let prev_page_url : String?
    let to : Int?
    let total : Int?

    enum CodingKeys: String, CodingKey {

        case current_page = "current_page"
        case datas = "data"
        case first_page_url = "first_page_url"
        case from = "from"
        case last_page = "last_page"
        case last_page_url = "last_page_url"
        case links = "links"
        case next_page_url = "next_page_url"
        case path = "path"
        case per_page = "per_page"
        case prev_page_url = "prev_page_url"
        case to = "to"
        case total = "total"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        current_page = try values.decodeIfPresent(Int.self, forKey: .current_page)
        datas = try values.decodeIfPresent([Datas].self, forKey: .datas)
        first_page_url = try values.decodeIfPresent(String.self, forKey: .first_page_url)
        from = try values.decodeIfPresent(Int.self, forKey: .from)
        last_page = try values.decodeIfPresent(Int.self, forKey: .last_page)
        last_page_url = try values.decodeIfPresent(String.self, forKey: .last_page_url)
        links = try values.decodeIfPresent([Links].self, forKey: .links)
        next_page_url = try values.decodeIfPresent(String.self, forKey: .next_page_url)
        path = try values.decodeIfPresent(String.self, forKey: .path)
        per_page = try values.decodeIfPresent(Int.self, forKey: .per_page)
        prev_page_url = try values.decodeIfPresent(String.self, forKey: .prev_page_url)
        to = try values.decodeIfPresent(Int.self, forKey: .to)
        total = try values.decodeIfPresent(Int.self, forKey: .total)
    }

}
