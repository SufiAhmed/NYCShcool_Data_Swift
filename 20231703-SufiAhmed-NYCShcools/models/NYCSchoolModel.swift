//
//  NYCSchool.swift
//  20231703-SufiAhmed-NYCShcools
//
//  Created by Sufiyan Ahmed on 3/17/25.
//

import Foundation

//setting up Model to decode in coming API JSON data
struct NYCSchool : Codable {
    var dbn: String?
    var school_name: String?
    var city: String?
    var zip: String?
    var state_code: String?
    var school_email: String?
    var overview_paragraph: String?
    var location: String?
    var website: String?
    var phone_number: String?
}
