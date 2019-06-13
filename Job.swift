//
//  Job.swift
//  JavaJobs
//
//  Created by twi on 6/13/19.
//  Copyright © 2019 twi. All rights reserved.
//

import Foundation

struct JavaJobElement: Codable {
    let id: String
    let type: TypeEnum
    let url: String
    let createdAt: String
    let company: String
    let companyURL: String
    let location, title, javaJobDescription, howToApply: String
    let companyLogo: String?
    
    enum CodingKeys: String, CodingKey {
        case id, type, url
        case createdAt = "created_at"
        case company
        case companyURL = "company_url"
        case location, title
        case javaJobDescription = "description"
        case howToApply = "how_to_apply"
        case companyLogo = "company_logo"
    }
}

enum TypeEnum: String, Codable {
    case contract = "Contract"
    case fullTime = "Full Time"
}

typealias JavaJob = [JavaJobElement]
